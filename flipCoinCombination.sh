#!/bin/bash -x

declare -A dictionary
dictionary[HHH]=0
dictionary[HHT]=0
dictionary[HTH]=0
dictionary[THH]=0
dictionary[HTT]=0
dictionary[THT]=0
dictionary[TTH]=0
dictionary[TTT]=0

for ((i=0;i<20; i++))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	flipCoin3=$((RANDOM%2))
case $flipCoin1$flipCoin2$flipCoin3 in
	000)
		((dictionary[HHH]++))
		;;
	001)

		((dictionary[HHT]++))
		;;
	010)
		((dictionary[HTH]++))
		;;

	100)
		((dictionary[THH]++))
		;;
	011)
		((dictionary[HTT]++))
                ;;
	101)
		((dictionary[THT]++))
                ;;
	110)
		((dictionary[TTH]++))
                ;;

	111)
		((dictionary[TTT]++))
                ;;

esac
done
echo "the percentage of HHH is $((${dictionary[HHH]}*100/20))"
echo "the percentage of HHT is $((${dictionary[HHT]}*100/20))"
echo "the percentage of HTH is $((${dictionary[HTH]}*100/20))"
echo "the percentage of THH is $((${dictionary[THH]}*100/20))"
echo "the percentage of HTT is $((${dictionary[HTT]}*100/20))"
echo "the percentage of THT is $((${dictionary[THT]}*100/20))"
echo "the percentage of TTH is $((${dictionary[TTH]}*100/20))"
echo "the percentage of TTT is $((${dictionary[TTT]}*100/20))"


