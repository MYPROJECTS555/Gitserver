#!/bin/bash

item=locale                                          ## variable 

if [ -f $item ]                                      ## this -f will find all file"locale".
then
echo " it is a file"
else
echo " it is a not  file"
fi
