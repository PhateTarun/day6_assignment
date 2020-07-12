#!/bin/bash 

number=$1
upper=100 #upper limit of the number to be entered
lower=0   #lower limit of the number to entered
greater=1  #using falg for representing greater
ask=$(((upper-lower)/2)) #initial value to be asked to the user
attempt=0
true=1
while [ $true ]
do	
	prev_upper=$upper  #storing value of previous upper and lower to compare if user is lying
	prev_lower=$lower
	read -p  "enter 1 if number is greater than $ask else, 0 if smaller: " answer
	if [ $answer -eq $greater ]
	then 
		lower=$ask   #if the number is greater update the lower limit
		guess=$((lower+(upper-lower)/2))  #guess the new number based  on new lower
	else
		upper=$ask  # if the number is lesser than ask, update upper limit
		guess=$((upper-(upper-lower)/2)) #guess the new number based in  new upper limit
	fi
	#ask the user of number entered is correct and store it in reuslt
	read -p "$guess is the number, if true enter 1, 0 for false" result 
	if [ $result -eq 1 ] 
	then
		if [ $guess -eq $number ]
		then
			echo $guess   #if guessed correctly store the result and break
			break
		else
			echo "you are lying"
			break
		fi
	elif [ $attempt -ge 4 ] || [ $number -lt $lower ] || [ $number -gt $uppper ] 
	then
		echo "you are lying"
		break
	else
		echo "let me try again"    #else try again
		ask=$guess
	fi
	((attempt++))
done
