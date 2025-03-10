#!/bin/bash
#set -e
#set -x
#set -0

yum install -y docker
systemctl start docker
                       #### frist if we executing this script it will work if docker is already exist we need to comment for some command . This is scripting is for install docker. 

Date=$(date | awk '{print}')
v=$(docker --version)
status=$(systemctl status docker | awk '/Active/{print $3}'|tr -d "[()]")  # this command will display the status of the docker is running for not
echo " The status of the Docker is $Date :$status"
echo " The version is $v "



# we are running manually this script. So need to automated process. The sricpt should execute every minutes and the output is stored log file or simple file 
# so we use crontab 
# command is  : crontab -e
# empty file will open once we run above command
#syntax : 
## * * * * * /path/to/your/script.sh   >>    /path/to/your/log.log 


 # 1) * * * * * means script will execute every minutes
 #  2)/path/to/your/script.sh  path of the shell script file  # we can find the path of the file using command : realpath <file name>
 #  3) >> this is command is used to store output of shell script file to log file
 #   4) /path/to/your/log.log  . It is path of the log file. where we have to store the output.

 # example 1:

#  * * * * * /home/ec2-user/demo.sh >> /home/ec2-user/log.txt
#Cron also supports special strings:
#@reboot: Run once at system startup.
#@yearly or @annually: Run once a year (0 0 1 1).
#@monthly: Run once a month (0 0 1 * *).
#@weekly: Run once a week (0 0 * * 0).
#@daily or @midnight: Run once a day (0 0 * * *).
#@hourly: Run once an hour1 (0 * * * *).   #




 
 
 
