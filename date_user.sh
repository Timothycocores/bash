#!/bin/bash
#date/time/username

today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time > datetimeuser.txt
echo "$d"
