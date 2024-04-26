#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo "Directtory Exists"
else
    echo "Please create Directory"
fi

cd /tmp/app-logs
touch -d 20240101 okati.log
touch -d 20240101 rendu.log
touch -d 20240101 okati.js
touch -d 20240101 mudu.log
touch -d 20240101 query.js
touch -d 20240101 aidu.log
touch -d 20240101 nalugu.log



files=$(find . -name "*.log" -mtime +14)

while IFS= read -r line
do
    rm -rf $line
done << $files