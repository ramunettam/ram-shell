#!/bin/bash
USERID=$((id -u))

if [ $USERID -ne 0 ]
then
 echo "please take acces from super user "
 exit 1
 else
  echo "your are super user"
  fi 

  dnf install mysql -y

  if [ $? -ne 0 ]
  then

    echo " mysql installation....FAILUER"
      exit 1
   else
     echo "myql installainton.... sucess"    
     fi
     dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"