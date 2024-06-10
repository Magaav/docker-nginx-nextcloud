#!/bin/bash

# Run the cron.sh script # Maybe switch for a cron job from host machine
bash /cron.sh &
 
# Start the PHP-FPM service
php-fpm