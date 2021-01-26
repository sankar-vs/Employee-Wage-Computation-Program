#!/bin/bash -x
isPresent=2;
empRatePerHr=20;
isPartTime=1;
randomCheck=$((RANDOM %3));
if [ $isPresent -eq $randomCheck ]; then
        echo "Employee present";
        empHrs=8;
        wage=$(($empRatePerHr*$empHrs));
elif [ $isPartTime -eq $randomCheck ]; then
        echo "Employee Part Time";
        empHrs=4;
        wage=$(($empRatePerHr*$empHrs));
else
        echo "Employee absent";
        wage=0;
fi
echo "Salary=$wage";
