#!/bin/bash -x
isFullTime=1
empRatePerHr=20
isPartTime=2
workingDays=20
maxHrs=100
day=0
Hrs=0

function salaryPerDay() {
        echo $(($empRatePerHr*$1))
}

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
        Hrs=$(($Hrs+$empHrs))
        salary="$( salaryPerDay $(($empHrs)) )"
        totalSalary=$(($totalSalary+$salary))
        dailyWage[$day]=$(($salary))
        day=$(($day+1))
done

echo $totalSalary
echo ${dailyWage[@]}
