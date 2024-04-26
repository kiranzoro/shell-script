#!/bin/bash

set -e

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
echo "Script started excuting at $TIMESTAMP"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID != 0 ]
then
    echo "You are not a supper user"
    exit 1
fi

#VALIDATE(){
    #if [ $1 -ne 0 ]
    #then
   #     echo -e "$2 Installation is $R FAILUTE $N"
    #    exit 1
   # else
  #      echo -e "$2 installation is $G SUCCESS $N"
 #   fi
#}

dnf install mysql -y &>> $LOGFILE
#VALIDATE $? "MYSQL"

dnf install gitt -y &>> $LOGFILE
#VALIDATE $? "Git"
#if [ $? != 0 ]
#then
   # echo "Installation of mysql is FAILURE"
  #  exit 1
#else
 #   echo "Installtion is SUCCESS"
#fi