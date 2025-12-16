#!/bin/bash

echo " please enter the number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "given number is $NUMBER is even"
    else 
    echo "given number is $NUMBER is odd"
    fi