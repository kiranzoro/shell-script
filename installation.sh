#!/bin/bash

USERID=$(id -u)

if [ $USERID != 0 ]
then
    echo "You are not a supper user"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 Installation is FAILUTE"
        exit 1
    else
        echo "$2 installation is SUCCESS"
    fi
}

dnf install mdysql -y
VALIDATE $? "MYSQL"

dnf install git -y
VALIDATE $? "Git"
#if [ $? != 0 ]
#then
   # echo "Installation of mysql is FAILURE"
  #  exit 1
#else
 #   echo "Installtion is SUCCESS"
#fi