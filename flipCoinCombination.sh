#!/bin/bash

echo "This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet"
echo "Singlet Combination - H / T"

declare -A singlet
for (( i=1; i<=21; i++))
do
toss=$((RANDOM%2))

if [[ $toss -eq 1 ]]
then
	echo "H"
	((h++))
	singlet[Heads]=$h
else
	echo "T"
	((t++))
	singlet[Tails]=$t
fi
done

if [[ $h -gt $t ]]
then
	hp=`expr $h \* 100 / 20`
	echo "H Win with $hp %"
else
        tp=`expr $t \* 100 / 20`
        echo "T Win with $tp %"

fi
