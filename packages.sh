#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
echo "Script started excuting at $TIMESTAMP"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 Installation is $R FAILUTE $N"
        exit 1
    else
        echo -e "$2 installation is $G SUCCESS $N"
    fi
}


for i in $@
do
    echo "package to install $i"
    dnf list installed $i &>> $LOGFILE
    if [ $? -eq 0 ]
    then
        echo "$i is already installed ..... $Y SKIPPING $N"
    else
        echo "$i is need to be installed"
    fi
done