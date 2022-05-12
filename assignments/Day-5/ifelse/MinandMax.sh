#!/bin/bash -x

min=999
max=0

for i in  1 2 3 4 5
do
	randomCheck=$((RANDOM%900+100))
	if [[ $randomCheck -gt $max ]]
	then
		biggest=$randomCheck
	fi
     	if [[$randomCheck -lt $min ]]
     	then
        	smallest=$randomCheck
     	fi
done

echo "The largest number is $biggest"
echo "The smallest number is $smallest"
