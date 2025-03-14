#!/bin/bash

string1=$(systemctl status docker | awk '/Active/{print $3}' | tr -d "[()]")   ## frist string1 will execute. if status of the string1 is matched with string2. 
string2="running"
start=$(systemctl start docker)

if [ "$string1" == "$string2" ]
then
        echo " application is running "
else
        echo " The status of the docker is : $start" >> log.txt
fi


## add the path of the script in crontab -e
