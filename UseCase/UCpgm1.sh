#!/bin/bash -x

partTime=1
fullTime=2
totalSalary=0
workingDays=20
empRatePerHr=20

for (( day=1; day<=$workingDays; day++ ))
do
	randomCheck=$((RANDOM%3))
		case $randomCheck in
				$fullTime )
					empHrs=8
				;;
				$partTime )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
		esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
