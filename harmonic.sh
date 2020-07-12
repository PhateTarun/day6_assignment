#!/bin/bash -x
read -p "Enter value of n: " n
harmonic_number=0
for (( i=1; i<=$n; i++))
do 
	harmonic_value=`expr "1/$i" | bc -l`  #compute immediate harmonic value
	harmonic_number=`expr "$harmonic_number+$harmonic_value" | bc`  # sum harmonic value
done
