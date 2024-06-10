FROM nextcloud:29-fpm

# Set working directory
WORKDIR /var/www/html

# Install ping utility
RUN apt-get update && apt-get install -y iputils-ping default-mysql-client sudo gosu procps
# procps cron

# Get arguments for creating www-data user
ARG UID
ARG GID
# Print UID and GID for debugging
RUN echo "UID: $UID, GID: $GID"
# Modify www-data user to have the same UID and GID as the host user
RUN usermod -u $UID www-data && groupmod -g $GID www-data

# Copy the entrypoint script into the container
COPY nextcloud.entrypoint.sh /usr/local/bin/
# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/nextcloud.entrypoint.sh
# Set the entrypoint
ENTRYPOINT ["nextcloud.entrypoint.sh"]