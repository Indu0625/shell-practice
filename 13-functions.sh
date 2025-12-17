#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please run this script with root previliges"
    exit 1
    fi
    VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 failed"
    exit 1
    else
    echo "installing $2 is success"
    fi
    }
    dnf install mysql -y

    VALIDATE $? "mysql"
    dnf install nginx -y
    VALIDATE $? "nginx"
