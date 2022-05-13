#!/bin/bash -x

n=0
for((n=1; n<100; i++))
do
        while (($n<100))
        do
                $((n++))
                mod=$((n%10))
                a=$((n/10))
                if (( $a == $mod ))
                then
                        echo $n
                fi
        done
done
