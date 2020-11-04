#!/bin/bash

echo "This problem displays winning percentage of Head or Tail Combination in a Singlet, Doublet and Triplet"

toss=$((RANDOM%2))

if [[ $toss -eq 1 ]]
then
	echo "Heads"
else
	echo "Tails"
fi
