#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo "Directtory Exists"
else
    echo "Please create Directory"
fi

cd /tmp/app-logs

find . type -f -name "*.log" +mtime -14