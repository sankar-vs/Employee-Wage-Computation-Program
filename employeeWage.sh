#!/bin/bash -x
isPresent=1;
empRatePerHr=20;
randomCheck=$((RANDOM %2));
if [ $isPresent -eq $randomCheck ]; then
        echo "Employee present";
        empHrs=8;
        wage=$(($empRatePerHr*$empHrs));
else
        echo "Employee absent";
        wage=0;
fi
echo "Salary=$wage";
