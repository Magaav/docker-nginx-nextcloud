#!/bin/bash

# Respect the image oficial entrypoint settings
set -eo pipefail
shopt -s nullglob

docker-entrypoint.sh "$@" &  # Start MySQL in the background

wait_for_mysql_service() {
  echo "Waiting for MySQL service to start..."
  until mysqladmin ping -h localhost --silent; do
    sleep 10
    echo "Still waiting for MySQL service..."
  done
  echo "MySQL service is up and running."
  # Wait until MySQL is ready to accept connections
  until mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -e ";"; do
      sleep 10
      echo "Waiting for MySQL to become fully ready..."
  done
}
wait_for_mysql_service

# Run the SQL commands
#   DROP USER IF EXISTS '${MYSQL_USER}'@'%';
# mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "
#   DROP USER IF EXISTS '${MYSQL_USER}'@'%';
#   CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
#   CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE} CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
#   GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
#   FLUSH PRIVILEGES;
# "

#Run the SQL commands
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "
  GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
  FLUSH PRIVILEGES;
"

wait $!                      # Wait for the MySQL background process to finish