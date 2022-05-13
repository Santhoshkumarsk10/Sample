#!/bin/bash -x

arr=(0 -1 2 -3 1)

len=${#arr[@]}
echo $len

for ((i=0; i<$len; i++))
do
	for ((j=$i+1; j<$len-1; j++))
        do
		for ((k=$j+1; k<$len; k++))
            	do
			echo ${arr[$k]}
			a=${arr[$i]}
			b=${arr[$j]}
			c=${arr[$k]}
			d=$((a+b+c))
			echo $d
                	if (($d == 0))
	                then
				echo "adding numbers equal to zero" ${arr[$i]} ${arr[$j]} ${arr[$k]}
                	fi
            	done
        done
done
