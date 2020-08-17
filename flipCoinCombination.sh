#!/bin/bash -x

declare -A dictionary
dictionary[Heads]=0
dictionary[Tails]=0

for ((i=0;i<10; i++))
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 0 ]
then
		((dictionary[Heads]++))
else
		((dictionary[Tails]++))
	fi
done
echo "the percentage of heads is $((${dictionary[Heads]}*100/10))"
echo "the percentage of tails is $((${dictionary[Tails]}*100/10))"
