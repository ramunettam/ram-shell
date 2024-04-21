#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2...$R FAILURE$N "
        exit 1
    else
        echo "$2...$G SUCCESS $N"
    fi
}


if [ $USERID -ne 0 ]
then
 echo "please take acces from super user "
 exit 1
 else
  echo "your are super user"
  fi 
  dnf install mysql -y &>>LOGFILE
VALIDATE $? "mysql" 

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git" 