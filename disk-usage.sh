#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5
MESSAGE=""
while IFS= read -r line
do
    USAGE=$(echo $line |awk -F " " '{print $6F}'| cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="memory of $FOLDER has been exceeded to $USAGE, Please clear the disk \n"
    fi
done <<< $DISK_USAGE
echo "message: $MESSAGE"

echo "$MESSAGE" | mail -s "Warning" kirankumardavu@gmail.com

