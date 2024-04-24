#!/bin/bash

USERID=$(id -u)

if [ $USERID != 0 ]
then
    echo "You are not a supper user"
    exit 1
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "$2 Installation is Success"
        exit 1
    else
        echo "$2 installation is Failure"
    fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"
#if [ $? != 0 ]
#then
   # echo "Installation of mysql is FAILURE"
  #  exit 1
#else
 #   echo "Installtion is SUCCESS"
#fi