#!/bin/bash -x

declare -A dictionary
dictionary[HH]=0
dictionary[HT]=0
dictionary[TH]=0
dictionary[TT]=0

for ((i=0;i<10; i++))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
case $flipCoin1$flipCoin2 in
	00)
		((dictionary[HH]++))
		;;
	01)

		((dictionary[HT]++))
		;;
	10)
		((dictionary[TH]++))
		;;

	11)
		((dictionary[TT]++))
		;;
esac
done
echo "the percentage of 2 heads is $((${dictionary[HH]}*100/10))"
echo "the percentage of 2 tails is $((${dictionary[TT]}*100/10))"
echo "the percentage of heads tails is $((${dictionary[HT]}*100/10))"
echo "the percentage of  tails heads is $((${dictionary[TH]}*100/10))"

