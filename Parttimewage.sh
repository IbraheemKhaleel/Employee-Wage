#!/bin/bash -x
isPresent=1
isParttime=2
rate=20
random=$(( RANDOM%3 ))
if [ $random -eq $isPresent ]
then
        workhour=8
elif [ $random -eq $isParttime ]
then
        workhour=4
else
        echo " The person is absent"
fi
salary=$((workhour*rate))
echo "Daily wage is $salary "
