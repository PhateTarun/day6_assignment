#!/bin/bash/ -x
#read input
read -p "Enter number: " number
#constants
upper_limit=256
#variables
two_power_n=$((2**$number))
table=2
while [ $table -le $upper_limit ]
do
	((table+=2))
done
