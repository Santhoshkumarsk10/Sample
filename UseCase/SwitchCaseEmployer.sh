#!/bin/bash -x

partTime=1
fullTime=2
ratePerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
		$partTime )
			empHrs=4
		;;
		$fullTime )
                        empHrs=8
                ;;
		*)
                        empHrs=0
                ;;
esac

salary=$(($empHrs*$ratePerHr))
echo $salary
