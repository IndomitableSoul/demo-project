#!/bin/bash -x

wagePerhr=100;
numOfhrs=0;
isFullTime=1;
isPartTime=2;
isRandomCheck=$((RANDOM%3));
if [ $isFullTime -eq $isRandomCheck ];
then 
     numOfhrs=8;
elif [ $isPartTime -eq $isRandomCheck ];
then
     numOfhrs=4;
else
     numOfhrs=0;
fi   
 
salary=$(($wagePerhr*$numOfhrs));
echo $salary;

