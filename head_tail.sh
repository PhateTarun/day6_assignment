#!/bin/bash -x

head=0
tail=1
numb_of_head=0
numb_of_tail=0
limit=11
while [ $numb_of_head -le $limit ] && [ $numb_of_tail -le $limit ]
do
	toss=$((RANDOM%2))
	case $toss in
		$head)	
			((numb_of_head++)) ;;
		$tail)
			((numb_of_tail++))  ;;
	esac
done
if [ $numb_of_head -eq $limit ]
then
	echo "Head wins"
else
	echo "Tails wins"
fi
