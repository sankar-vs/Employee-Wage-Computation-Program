#!/bin/bash -x
isPresent=1;
randomCheck=$((RANDOM %3));
if [ $isPresent -eq $randomCheck ]; then
        echo "Employee present";
else
        echo "Employee absent";
fi

