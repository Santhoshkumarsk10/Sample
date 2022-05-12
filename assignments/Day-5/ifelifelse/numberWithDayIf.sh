#! /bin/bash -x


echo "enter number:"
read n

if (( $n == 1 ))
then
	echo "Monday"
elif (( $n == 2 ))
then
        echo "TuesDay"
elif (( $n == 3 ))
then
        echo "WednesDay"
elif (( $n == 4 ))
then
        echo "ThursDay"
elif (( $n == 5 ))
then
        echo "Friday"
elif (( $n == 6 ))
then
	echo "SaturDay"
else
	echo "Sunday"
fi
