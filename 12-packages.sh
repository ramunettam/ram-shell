#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE() {
    if [ $1 -ne= 0 ]
    then
    echo -e "$2 ...$R FAILUER$N"
     exit 1
    else
    echo -e "$2 ...$G SUCESS$N"
    fi
}

if [ $USERID -ne=0 ]
then
  echo "please take acces from super user "
  exit 1
 else
   echo "your are super user"
  fi 

  for $i in $@
  do

  dnf install $i -y &>>LOGFILE
  VALIDATE $? "$i installtion"
  done