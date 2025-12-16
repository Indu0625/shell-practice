#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: please run this script with root priviliges"
    exit 1
    fi
    dnf install mysql -y

    if [ $? -ne 0 ]; then
        echo "ERROR:: installing mysql is failure"
        exit 1
        else 
         echo "installaing mysql success"  
         fi
         