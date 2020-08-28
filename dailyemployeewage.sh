#!/bin/bash -x
salary=0
isPresent=1
rate=20
random=$(( RANDOM%2 ))
if [ $random -eq $isPresent ]
then
        workhour=8
else
        echo " The person is absent"
fi
salary=$(( rate*workhour ))
echo "Daily wage is $salary "
