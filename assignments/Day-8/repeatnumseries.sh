#!/bin/bash -x

for((i=1; i<=100; i++))
do
	if (($i<=100))
	then
		case $i in
			11) echo $i;;
			22) echo $i;;
			33) echo $i;;
			44) echo $i;;
			55) echo $i;;
			66) echo $i;;
			77) echo $i;;
			88) echo $i;;
			99) echo $i;;
			*) echo "";;
		esac
	fi
done
