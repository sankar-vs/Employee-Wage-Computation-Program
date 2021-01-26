#!/bin/bash -x
isFullTime=1
empRatePerHr=20
isPartTime=2
workingDays=20
maxHrs=100
day=0
Hrs=0

declare -A dailyWage
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
        totalSalary=$(( $totalSalary+$( salaryPerDay $(($empHrs)) ) ))
        dailyWage["Day "$(($day+1))]=$( salaryPerDay $(($empHrs)) )
        day=$(($day+1))
done

echo $totalSalary
echo "Day: "${!dailyWage[@]}
echo "Salary: "${dailyWage[@]}
