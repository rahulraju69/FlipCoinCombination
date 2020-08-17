#!/bin/bash -x

declare -A dictionary
declare -a valueArray
declare -a keyArray
dictionary[HHH]=0
dictionary[HHT]=0
dictionary[HTH]=0
dictionary[THH]=0
dictionary[HTT]=0
dictionary[THT]=0
dictionary[TTH]=0
dictionary[TTT]=0
dictionary[HH]=0
dictionary[HT]=0
dictionary[TH]=0
dictionary[TT]=0
dictionary[H]=0
dictionary[T]=0

for (( i=0 ; i<30 ; i++ ))
do
	coinFlip=$((RANDOM%14))
	case $coinFlip in
		0)
			((dictionary[HHH]++))
			;;
		1)
			((dictionary[HHT]++))
			;;
		2)
			((dictionary[HTH]++))
			;;
		3)
			((dictionary[THH]++))
			;;
		4)
			((dictionary[HTT]++))
			;;
		5)
			((dictionary[THT]++))
			;;
		6)
			((dictionary[TTH]++))
			;;
		7)
			((dictionary[TTT]++))
			;;
		8)
			((dictionary[HH]++))
			;;
		9)
			((dictionary[HT]++))
			;;
		10)
			((dictionary[TH]++))
			;;
		11)
			((dictionary[TT]++))
			;;
		12)
			((dictionary[H]++))
			;;
		13)
			((dictionary[T]++))
			;;
	esac
done
i=0
for value in `echo ${dictionary[@]}`
do
	valueArray[$i]=$value
	((i++))
done
i=0
for key in `echo ${!dictionary[@]}`
do
	keyArray[$i]=$key
	((i++))
done
max=0
maxCounter=0
for (( counter=0 ; counter<14 ; counter++ ))
do
	if [ ${valueArray[$counter]} -gt $max ]
	then
		max=${valueArray[counter]}
		maxCounter=$counter
	fi
done
echo "The winning combination is ${keyArray[$maxCounter]} and it occured ${valueArray[$maxCounter]} times"
