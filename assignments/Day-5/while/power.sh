#!/bin/bash -x

echo "Enter a integer for the base"
read a
b=2
c=1
res=1

if((a >= 1 && b >= 1));
  then
    while((c <= b))
    do
      res=$((res * a))
      c=$((c + 1))
    done
fi

echo "$a to the power $b is $res"
