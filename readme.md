# task-12devs
=== �������
Legend 
� ���� �������� �����������, ������� ���������� ����������� � ���������� 10 ���-������, ������������� �� ���5. 
� ������������ ���������� � ������� ��������� ��� � ������ ��������� ���� ������� �� stagi�g �nvironment ����� �������� 'git pull' � �������� �������������� ������ �����������. �������������� ����������� ����� ��������: 
	� ������ ���������� �������� � ����� ������, 
	� ������ ������ �����-�� ��������. 

� Staging �nvironment: 
	� ���� L��� � Linux, Nginx, MySQL, ���. 
	� 1 linux server ������� ����������� 10 ����������� ������, �������� website1.com, website2.com, ... website10.com 

Task descriptien 

� ����������� ������� ��� ���������� ������ stagi�g �nvironment � �������������� Docker. 
� ������������ ������ ���� ������������ ������ ��������� ��� 10 ���-������. 
� ���������� ����������� �I/�D ������� �� ���������� � ��� ������. 


=== ������� (?)

I. ��� �������

1. ������ ��� �� ����� git 3 ���*
https://www.youtube.com/playlist?list=PLg5SS_4L6LYstwxTEOU05E0URTHnbtA0l

2. ����� ���� github 2 ���
https://github.com/eug-den
����� ���� ��������� �� powershell

3. � AWS �� ������ � docker ������ ������������� docker_compose � ������ LEMP 1 ����
�� ����� ��� ���� ����� wordpress �� ������ �������� docker. ������� ������
����������� �� ����� � https://hub.docker.com/_/php
https://www.pascallandau.com/blog/php-php-fpm-and-nginx-on-docker-in-windows-10/
������ �� �� ���� ����� � ���. ���������� � myphpadmin ������ �������� � ������������
� linux � �������� ����. � � ������� - ���. � wordpress ����� ����. ������� �� �����. 

4. ������ �� ��������� ������� � proxmox debian, �� ������� ���������.   1 ����
����� docker-compose ��� docker plugin: docker compose.

5. ������ PHP � ���������� 10 PHP ���������� � ��������� �� �� 10 ����������� ��������
https://www.tutorialrepublic.com/   - ������� PHP
https://sebhastian.com/mysql-random-string/  ���������� rand �������.
����� bash � sed

6. ����� ������������ git � ������������ �����������  1 ����
   � ������ ���� ����

7.  git clone �� AWS

8. ����������� docker-compose
    �������� ���������� �� d-c  � PHP ??


II. ��� � ������
db      - docker volume � ������ MYSQL
docker  - docker-compose ��� ����������� LEMP � �������������� �������
html    - docker volume � ���������� ����������� ��������
nginx   - docker volume c �������������� ����������� �������� NGINX
php     - ������� ��� �������� � ���������� ���������� ��� MYSQL ��������������� ��������� �����������


* ������ ��� ����������� �� 20 ��� �� 10 �����... � ������� ~ 2 ����