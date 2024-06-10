FROM nginx:1.24

# install lua module
RUN apt-get update && apt-get install -y nginx-extras

# Copy the script to the container and give it execute permissions
COPY nginx.init.sh /init/nginx.init.sh
RUN chmod +x /init/nginx.init.sh

# Set the initialization script as the default command
CMD ["/bin/sh", "/init/nginx.init.sh"]
