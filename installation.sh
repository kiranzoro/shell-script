#!/bin/bash

USERID=$(id -u)

if [ $USERID != 0 ]
then
    echo "You are not a supper user"
    exit 1
else
    echo "You are a super user"
fi