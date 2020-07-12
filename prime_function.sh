#!/bin/bash -x

function prime_function(){
	if [ ! $1 -eq 1 ]
	then
		counter=2
		limit=$(($1/2))
		while [ $counter -lt $limit ]
		do
			if [ $(($n%$counter)) -eq 0 ]
			then
				echo "non prime"
				return 
			fi
			((counter++))
		done
		echo "prime"
		return 
	fi
	echo "non prime"
	return
}
read -p "Enter a number" n
prime_function $n 

