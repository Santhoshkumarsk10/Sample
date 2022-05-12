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
}
function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}
while [[ $totalEmpHr -lt $maxRateInMonth &&
        $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
        getWorkingHrs $randomCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}
