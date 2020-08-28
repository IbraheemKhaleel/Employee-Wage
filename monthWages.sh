#!/bin/bash -x
totalsalary=0
isPresent=1
isParttime=2
rate=20
max_days=20
tdays=o
while [[ $((tdays)) -lt $((max_days)) ]]
do
        random=$(( RANDOM%3 ))
        if [ $random -eq $isPresent ]
        then
                workhour=8
        elif [ $random -eq $isParttime ]
        then
                workhour=4
        else
        echo " The person is absent"
                        workhour=0
                        ((tdays--))
        fi
        ((tdays++))
        salary=$(( rate*workhour ))
        totalsalary=$((totalsalary+salary))
        echo "daily wage is $salary "
done
totalworkingsalary=$((totalsalary*tdays ))
echo " Total wages of a month equals $totalworkingsalary "

