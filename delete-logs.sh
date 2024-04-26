#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo "echo Dir Exists"
else
    echo "Please create Directory"
fi

find . -name "*.log" +mtime +14