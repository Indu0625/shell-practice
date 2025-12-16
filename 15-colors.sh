#!/bin/bash
R= "\e[31m"
G= "\e[32m"
Y= "\e[33m"
N= "\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please run this script with root previliges"
    exit 1
    fi
    VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
    echo -e "ERROR:: Installing $2 .....$R failed $N"
    exit 1
    else
    echo -e  "installing $2 ....$G success $N"
    fi
    }
    dnf install mysql -y

    VALIDATE $? "mysql"
    dnf install nginx -y
    VALIDATE $? "nginx"
