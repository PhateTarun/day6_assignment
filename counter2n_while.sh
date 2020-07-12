#!/bin/bash -x

read -p "Enter number: "number
#constant
upper_limit=256
#variable
power_of_2=$((2**$number))
table=2
while [[ $table -le $power_of_2  && $table -le $upper_limit ]]
do
	table=$(($table+2))
done
