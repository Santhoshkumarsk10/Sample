#!/bin/bash -x

partTime=1
fullTIme=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs()
{
	case $n1 in
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
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkingHrs $((RANDOM%3))
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
