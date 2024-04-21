#!/bin/bash
USERID=$((id -u))
SCRIPT_NAME=$((echo $0 | cut -d "." -f1))
TIMESTAMP=$(DATE +%F-%H-%M-%S)
LOGFILE=/temp/$SCRIPT_Name + $TIMESTAMP.log

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}



if[ USERID -ne 0]
then
 echo "please take acces from super user "
 exit 1
 else
  echo "your are super user"
  fi

VALIDATE $? "mysql" 