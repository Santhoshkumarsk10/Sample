#!/bin/bash -x

echo "Please give me a number: "
read num

if (( $num >= 1000 ))
then
        echo $num
elif (($num >= 100 && $num <= 999))
then
        echo $num
elif (($num >= 10 && $num
