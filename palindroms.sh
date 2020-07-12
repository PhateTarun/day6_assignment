#!/bin/bash -x

function palindromes(){
	local input=$1;
	reverse='';
	for char in `echo $input | fold -w1`
	do
		reverse=$char$reverse
	done
	if [ "$input" == "$reverse" ]
	then
		echo "is palindrom"
	else
		echo "not a palindrom"
	fi
}
#input
read -p "enter number or string to check palindrome" input
palindromes $input
