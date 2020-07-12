#!/bin/bash -x

number=$1
magic_number=1
sum=0
single_digit_limit=9

while [ $sum -gt $single_digit_limit ] || [ $number -gt $single_digit_limit ]
do
	sum=0
	while [ $number -gt 0 ]
	do
		sum=$(( sum + number%10 ))
		number=$(( number/10 ))
	done
	number=$sum
done

if [ $1 -eq $magic_number ] || [ $sum -eq $magic_number ]
then
	echo "Magic number"
else
	echo "Not a magic number"
fi


