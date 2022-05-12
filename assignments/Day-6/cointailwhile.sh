#!/bin/bash -x

coin=$(($(($RANDOM%10))%2 + 10))
echo $coin

for ((i=0;i<11;i++))
do
	if [ $coin -eq $i ]
	then
		echo "heads"
	else
	    	echo "tails"
	fi
done
