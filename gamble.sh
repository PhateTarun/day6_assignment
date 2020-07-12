#!/bin/bash 
#constants
cash_goal=200
win=1
loss=0
#variable
available_cash
win_count=0
loss_count=0
total_bets=0
while [ $available_cash -le $cash_goal ] && [ ! $available_cash -eq 0 ]
do
	((total_bets++))
	bet_result=$((RANDOM%2))
	case $bet_result in
		$win)
			available_cash=$(($available_cash+1))   #asumming bet ratio is 1:1
			((win_count++))	;;
		$loss)
			available_cash=$(($available_cash-1))
			((loss_count++))	;;
	esac
done
echo "Available cash = $available_cash"
echo "Win count = $win_count"
echo "Loss count = $loss_count"
echo "Total_bets = $total_bets"


