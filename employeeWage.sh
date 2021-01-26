#!/bin/bash -x
isFullTime=1
empRatePerHr=20
isPartTime=2
workingDays=20
maxHrs=100
day=0
Hrs=0
while [[ $day -le $workingDays && $Hrs -le $maxHrs ]]
do
        empCheck=$((RANDOM %3))
        case $empCheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
        day=$(($day+1))
        Hrs=$(($Hrs+$empHrs))
        salary=$(($empRatePerHr*$empHrs))
        totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
