#!/bin/sh

# OLD # # Expand variables within NGINX_SSL_CONFIG using eval
# OLD # # Used for substituing inner .env variables from its own variables
# OLD # eval "NGINX_SSL_CONFIG=\"$NGINX_SSL_CONFIG\""

# OLD # # Export the variables so envsubst can use them
# OLD # export GLOBAL_HOST_NAME GLOBAL_ENV_MODE 

# Export all environment variables
for varname in $(env | awk -F= '{print $1}'); do
    export $varname
done

# Check the value of ENV_MODE and decide which configuration to use
CONFIG_FILE="nginx.conf.template"

# Substitute the variable and generate the default.conf
envsubst '${GLOBAL_HOST_NAME}' < /etc/nginx/conf.d/$CONFIG_FILE > /etc/nginx/conf.d/default.conf
# envsubst < /etc/nginx/conf.d/$CONFIG_FILE > /etc/nginx/conf.d/default.conf

# Run nginx in the background
nginx -g 'daemon off;' &

# Make Nginx reload its configuration (and certificates) every six hours in the background and launches nginx in the foreground.
while :; do
    sleep 6h
    nginx -s reload
done