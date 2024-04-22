#!/bin/bash

USERID=$(id -u)

if [ $USERID != 0 ]
then
    echo "You are not a supper user"
    exit 1
fi

dnf install mysqll -y

if [ $? != 0 ]
then
    echo "Installation of mysql is FAILURE"
    exit 1
else
    echo "Installtion is SUCCESS"
fi