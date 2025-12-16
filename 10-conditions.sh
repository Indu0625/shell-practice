#!/bin/bash
NUMBER=$1


if [ $NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less than 10"
    elif [ $NUMBER -eq 10 ]; then
    echo "given number $NUMBER  equal to 10"
    else

    echo "given number $NUMBER is greater than or equal to 10"
    fi
    # -gt ---> greater than
    # -eq ----> equal 
    # -ne -----> not equal