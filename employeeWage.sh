#!/bin/bash -x
isFullTime=1
empRatePerHr=20
isPartTime=2
workingDays=20
maxHrs=100
day=0
Hrs=0

function wrkHrs() {
        case $1 in
                $isFullTime)
                        numberofWorkingHours=8;;
                $isPartTime)
                        numberofWorkingHours=4;;
                *)
                        numberofWorkingHours=0;;
        esac
        echo $numberofWorkingHours
}

while [[ $day -le $workingDays && $Hrs -le $maxHrs ]]
do
        empCheck=$((RANDOM %3))
        empHrs="$( wrkHrs $(($empCheck)) )"
        day=$(($day+1))
        Hrs=$(($Hrs+$empHrs))
        salary=$(($empRatePerHr*$empHrs))
        totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
