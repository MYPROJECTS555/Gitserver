#!/bin/bash
status=$(systemctl status docker| awk '/Active/{print $3}' | tr -d "[()]")  # this command print out :  Status of the docker: running
echo " Status of the docker:$status"
