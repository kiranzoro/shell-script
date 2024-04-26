#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d app-logs ]
then
    echo "echo Dir Exists"
else
    echo "Please create Directory"
fi

find . -name "*.log" +mtime +14