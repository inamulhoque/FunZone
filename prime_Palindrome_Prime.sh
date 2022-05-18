#!/bin/bash -x

read -p "Enter number " n

function prime() {

flag=0

for (( i=2; i<=$n/2; i++ ))
do
        val=$(( n%i ))
        if [ $val == 0 ]
        then
        flag=1
        fi
done

if [ $flag == 1 ]
then
        echo "$n is not a prime number"
else
        echo "$n is a prime number"
fi

palin

}


function palin() {
temp=$n
rev=0
while [ $n -gt 0 ]
do
        s=`expr $n % 10`
        n=`expr $n / 10`
        rev=`expr $rev \* 10 + $s`
done

if [ $temp -eq $rev ]
then
        echo "$temp is palindrome"
else
        echo "$temp is not palindrome"
fi

}

prime $n
