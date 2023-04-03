#!/bin/bash

# start LEMP
docker compose -f ./docker/docker-compose.yaml up -d

# wait for LEMP initializing
SLEEP_TIME=10s
echo -e "\nWait $SLEEP_TIME \bec for LEMP initializing ...\n"
sleep "$SLEEP_TIME"

# create bases, tables & fill them with random data
cp ./php/install.php ./html/install.php
docker exec -it php php /var/www/html/install.php
rm ./html/install.php

