#!/bin/bash  
read -p "Enter lower limit: " lower_limit
read -p "Eter upper limit: " upper_limit

prime=0 # flag for prime numbers
for ((j=$lower_limit; j<=$upper_limit; j++))
do
	#checking if number is prime
        prime=1  # flag 1 for prime numbers it will change whenever number is not prime
        for ((i=2; i<$j; i++))
        do
                if [ $((j%i)) -eq 0 ]
                then
                        prime=0
                fi
        done

	if [ $prime -eq 1 ] && [ ! $j -eq 1 ]
	then
		echo "$j is prime"
	fi
done

