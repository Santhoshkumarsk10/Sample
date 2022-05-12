#! /bin/bash -x

dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
dice3=$((RANDOM%6))
sum=$((dice1+dice2+dice3))
echo $sum
