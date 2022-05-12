#!/bin/bash -x

echo "Enter number : "
read n

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

echo "Your number $n in words : "
for (( i=1; i<=$len; i++ ))
do
   # get one digit at a time
    digit=$(echo $n | cut -c $i)
   # use case control structure to find digit equivalent in words 
    case $digit in
        0) echo "zero " ;;
        1) echo "one " ;;
        2) echo "two " ;;
        3) echo "three " ;;
        4) echo "four " ;;
        5) echo "five " ;;
        6) echo "six " ;;
        7) echo "seven " ;;
        8) echo "eight " ;;
        9) echo "nine " ;;
    esac
done

echo ""
