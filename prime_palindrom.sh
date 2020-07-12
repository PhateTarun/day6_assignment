#!/bin/bash -x 

function prime_number(){
	number=$1
	if [ ! $number -le 1 ]
	then
		for (( i=2; $((i*i))<$number; i++))
		do
			if [ $((number%i)) -eq 0 ]
			then
				return 0
			fi
		done
		return 1
	fi
	return 0
}

function palindromes(){
   number=$1;
   reverse='';
   for char in `echo $number | fold -w1`
   do
      reverse=$char$reverse
   done
   if [ "$number" == "$reverse" ] 
   then
		echo "$reverse"
      return 
   else
      return 0 
   fi
}

read -p "enter a number" number

isprime="$( prime_number $number )"
ispalindrome="$( palindromes $number )"	 #store palindrome status
is_prime_palindrome="$( prime_number $isprime_palindrome )"	 # storing prime status of palindrome
result=$isprime$is_prime_palindrome 	 # concatinating prime and isprime_palindrome status
case $result in
	0$isprime_palindrome)
		echo "$1 is not prime" ;;         # this will cover both 00 and 01
	10)
		echo "$1 is prime but palindrome is not prime";;
	11)
		echo "$1 is prime and its palindrome is also prime";;
esac


