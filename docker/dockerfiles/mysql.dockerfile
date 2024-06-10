FROM mysql:8.2

# Expose port 3306 for mysql connections
EXPOSE 3306 4444 4567 4567/udp 4568 33060 33061

# Set the custom script to run after MySQL starts
COPY ./mysql.init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mysql.init.sh
ENTRYPOINT ["/usr/local/bin/mysql.init.sh"]

CMD ["mysqld"]