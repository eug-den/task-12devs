#!/bin/bash
# формируем базы, таблицы, а также произвольное заполнение последних
cp ./php/install.php ./html/install.php
docker exec -it php php /var/www/html/install.php  
cp ./php/install.php ./html/install.php
# запускаем LEMP
docker compose -f ./docker/docker-compose.yaml up -d