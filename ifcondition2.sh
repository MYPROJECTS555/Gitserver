#!/bin/bash

item=cloud   ## cloud is folder or directory 

if [ -d $item ]  # this condition will check it is directory or not
then
echo " It is a directory"
else
echo "it is not a directory"
fi
