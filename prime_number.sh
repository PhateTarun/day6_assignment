#!/bin/bash -x
read -p "Enter a number: " n
prime=0  # will be 1 if prime else 0
if [ ! $n -eq 1 ]
then
	counter=2
        limit=$((n/2))
        while [ $counter -lt $limit ]
        do
        	if [ $(($n%$counter)) -eq 0 ]
                then
                	prime=0
                        break 
                fi
                ((counter++))
        done
        prime=1 
fi

if [ $prime -eq 1 ]
then
	echo "Prime"
else
	echo "Non prime"
fi
