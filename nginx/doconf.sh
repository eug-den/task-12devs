#!/bin/bash
# generate .conf files for nginx virtual servers 

for i in {1..10}
do
   sed "s/XXXXXXXX/website$i/" website.conf > ./conf.d/website$i.com.conf
done

