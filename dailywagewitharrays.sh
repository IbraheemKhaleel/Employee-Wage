#!/bin/bash
totalsalary=0
isPresent=1
isParttime=2
rate=20
max_hours=100
max_days=20
thours=0
tdays=o
function getEmp() {
        local emphr=$1
        echo $((emphr))
}
while [ $((thours)) -lt $((max_hours)) ] && [ $((tdays)) -lt $((max_days)) ]
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
         Workhours="$( getEmp $((workhour)) )"
        thours=$((thours+Workhours))
        salary=$(( rate*Workhours ))
        echo "daily wage is $salary "
        dailywage[$tdays]=$((salary))
        totalsalary=$((totalsalary+salary))
done
totalworkingsalary=$((totalsalary*thours ))
echo " Total working hours is $thours  and  Total days are $tdays "
echo "daily wage is ${dailywage[@]} "
echo "Total wage of month is $totalworkingsalary "



