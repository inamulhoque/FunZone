#!/bin/bash -x

win=0
loss=0
while [[ $win -le 10 && $loss -le 10 ]]
do

a=$(($RANDOM%2))
if [ $a == 1 ]
then
        ((win++))
else
        ((loss++))
fi

done

echo "Head wins : $win times"
echo "tail wins : $loss times"

if [ $win -gt $loss ]
then
	echo "Head won the battle"
else
	echo "Tail won the battle"
fi
