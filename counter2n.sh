#!/bin/bash -x

read -p "Enter the value of n: " n

for (( counter=2; counter <= $((2**$n)); counter+=2 )) #incrementing counter with 2, using 2^n as limit
do
	echo $counter
done 
