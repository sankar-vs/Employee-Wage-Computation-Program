#!/bin/bash -x
isFullTime=1
empRatePerHr=20
isPartTime=2
workingDays=20
for (( day=1 ; day<=$workingDays ; day++))
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
salary=$(($empRatePerHr*$empHrs))
totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
