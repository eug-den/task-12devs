#!/bin/bash
# ��������� ����, �������, � ����� ������������ ���������� ���������
cp ./php/install.php ./html/install.php
docker exec -it php php /var/www/html/install.php  
cp ./php/install.php ./html/install.php
# ��������� LEMP
docker compose -f ./docker/docker-compose.yaml up -d