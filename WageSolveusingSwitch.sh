#!/bin/bash -x
isPresent=1
isAbsent=0
isParttime=2
rate=20
random=$(( RANDOM%3 ))
case "$random" in
        1) workhour=8
                echo "employee is present"
                ;;
        2) workhour=4
                echo "Employee is part time"
                ;;
        *) workhour=0
                echo "Employee is absent"
                ;;
esac
salary=$((workhour*rate))
echo "Daily wage is $salary "
