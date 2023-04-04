#!/bin/bash
# generate hosts file for access virtual nginx web serevers
IP=192.168.0.101

if [ ! -f hosts.sav ] ; then
  cp /etc/hosts hosts.sav
fi

cp -f hosts.sav hosts.out

for i in {0..10}
do
  echo $IP website$i.com>>hosts.out
done

# admin rights need
mv -f hosts.out /etc/hosts 

