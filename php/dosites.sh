#!/bin/bash

for i in {1..10}
do
   mkdir ../html/website$i
   sed "s/XXXXXXXX/website$i/" template.php >../html/website$i/index.php
done

