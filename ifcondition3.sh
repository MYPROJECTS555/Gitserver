#!/bin/bash

item=cloud

if [ -e $item ]  ## it willcheck every kind of item. It may be file or folder. 
then
echo " It is a directory"
else
echo "it is not a directory"
fi

