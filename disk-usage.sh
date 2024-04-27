#!/bin/bash

DISK_USAGE=$(df -hT)
DISK_THRESHOLD=5

while
do
    USAGE=$(df -hT | grep xfs | awk -F " " '{print $6F}'| cut -d "%" -f1)
    FOLDER=$(df -hT | grep xfs| awk -F " " '{print $NF}')
    if [ $USAGE -gt $DISK_THRESHOLD ]
    then
        echo "memory of $FOLDER has been exceeded to $USAGE, Please clear the disk"
done <<< $DISK_USAGE