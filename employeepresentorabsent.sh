#!/bin/bash -x
isPresent=1
random=$(( RANDOM%2 ))
if [ $((random)) -eq $((isPresent)) ]
then
        echo "Employee is present"
else
        echo " The person is absent"
fi
