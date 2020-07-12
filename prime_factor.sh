#!/bin/bash   
read -p "Enter number: " number

temp_number=$number 
for ((j=2; j<=$temp_number; j++))
do
	for ((n=0; $j<=$temp_number; n++))
	do
		if [ $(($temp_number%$j)) -eq 0 ]
		then
			echo $j
			temp_number=$(($temp_number/$j))
		else
			break
		fi
	done
done
