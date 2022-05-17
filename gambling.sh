#!/bin/bash -x

initialMoney=100
initialBet=1
count=0
win=1
loss=0
bets=0
while [[ $initialMoney -le 200 && $initialMoney -ne 0 ]]
do
	rand=$(($RANDOM%2))
if [ $rand -eq 1 ]
then
	((initialBet++))
	((count++))
	initialMoney=$(($initialMoney+$initialBet))
	((bets++))

else
	((initialBet--))
	initialMoney=$(($initialMoney-$initialBet))
	((bets++))
fi

done

echo "$count no of winning"

echo "$bets no of bets"
