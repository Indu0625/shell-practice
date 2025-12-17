#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
 
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
 mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)"|tee -a $LOG_FILE
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
    dnf list installed mysql &>>$LOG_FILE
    if [ $? -ne 0 ]; then

    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "mysql"
    else
     echo -e "mysql already exist....$Y skipping $N"
fi
    dnf list installed nginx &>>$LOG_FILE
    if [ $? -ne 0 ]; then

    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "nginx"
    else
     echo -e "nginx already exist....$Y skipping $N"
    fi



