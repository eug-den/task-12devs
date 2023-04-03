#!/bin/bash
# генератор .conf файлов для виртуальных серверов nginx
for i in {1..10}
do
   sed "s/XXXXXXXX/website$i/" website.conf > ./conf.d/website$i.com.conf
done

