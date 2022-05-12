#!/bin/bash -x

echo "Please give me a number: "
read num
if (( $num >= 1000 ))
then
	echo $num "Thousand"
elif (($num >= 100 && $num <= 999))
then
	echo $num "Hundered"
elif (($num >= 10 && $num <= 99))
then
	echo $num "Tens"
elif (($num <= 10))
then
	echo $num "Units"
else
	echo $num
fi
