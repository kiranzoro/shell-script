#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5
echo "$DISK_USAGE"

while IFS= read -r line
do
    USAGE=$(echo $line |awk -F " " '{print $6F}'| cut -d "%" -f1)
    FOLDER=$(echo $line| awk -F " " '{print $NF}')
    if [ $USAGE >= $DISK_THRESHOLD ]
    then
        echo "memory of $FOLDER has been exceeded to $USAGE, Please clear the disk"
    fi
done <<< $DISK_USAGE