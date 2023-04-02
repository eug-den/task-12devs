# task-12devs
## ЗАДАНИЕ

### Legend 

• Есть типичный разработчик, который занимается разработкой и поддержкой 10 веб-систем, разработанных на РНР5. 

• Разработчику приходится в среднем несколько раз в неделю обновлять свои системы на stagiпg еnvironment путем обычного 'git pull' и возможно дополнительных ручных манипуляций. Дополнительные манипуляции могут включать: 

&nbsp;• ручное применение миграций к базам данных, 

&nbsp;• ручной запуск каких-то скриптов. 

• Staging еnvironment: 

&nbsp;• стек LЕМР — Linux, Nginx, MySQL, РНР. 
	
&nbsp;• 1 linux server который обслуживает 10 виртуальных хостов, например website1.com, website2.com, ... website10.com 


### Task descriptien 

• Разработать систему для управления такого stagiпg еnvironment с использованием Docker. 
• Разработчику должно быть относительно просто обновлять все 10 веб-систем. 
• Разработку полноценной СI/СD системы не предлагать — это другое. 


## РЕШЕНИЕ (?)

### I. ход решения

1. изучил что же такое git 3 дня 
https://www.youtube.com/playlist?list=PLg5SS_4L6LYstwxTEOU05E0URTHnbtA0l

2. завел себе github 2 дня
https://github.com/eug-den
залил свою програмку на powershell

3. в AWS на машине с docker поднял дополнительно docker_compose и собрал LEMP 1 день до этого был опыт сбора wordpress на чистых командах docker. поэтому быстро 
использовал по сылке с https://hub.docker.com/_/php информацию с https://www.pascallandau.com/blog/php-php-fpm-and-nginx-on-docker-in-windows-10/

почему то не могу зайти с лок. компьютера в myphpadmin дальше картинки с регистрацией с linux и телефона норм. а с родного - фиг. С wordpress также было. Оставлю на потом. 

4. поднял на локальном сервере с proxmox debian, на котором продолжил.   1 день
здесь docker-compose уже docker plugin: docker compose.

5. изучил PHP и разработал 10 PHP приложений и установил их на 10 виртуальных серверов
https://www.tutorialrepublic.com/   - учебник PHP
https://sebhastian.com/mysql-random-string/  заполнение rand данными.
в автоматизации помог bash и sed

6. начал привязывавть git к получившейся конструкции  1 день
   и писать этот файл

7.  git clone на AWS

8. оптимизация docker-compose
    передача параметров из d-c  в PHP ??


### II. что в папках
db      - docker volume с базами MYSQL

docker  - docker-compose ддя формировани LEMP с сопутствующими файлами

html    - docker volume с содержимым виртуальных серверов

nginx   - docker volume c конфигурациями виртуальных серверов NGINX

php     - скрипты для создания и начального заполнения баз MYSQL соответствующих отдельным приложениям

* длинна дня варьируется от 20 мин до 10 часов... в среднем ~ 2 часа*
