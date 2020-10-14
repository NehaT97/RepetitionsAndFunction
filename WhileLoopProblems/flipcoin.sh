#!/bin/bash

head=1
headCount=0
tailCount=0

while [ $headCount -le 10 -a $tailCount -le 10 ]
do
	flipCheck=$(( RANDOM % 2 ))
	case $flipCheck in
		$head)
			((headCount++))
			;;
		*)
			((tailCount++))
			;;
	esac
done

if [ $headCount -eq 11 ]
then
	echo Head Wins

elif [ $tailCount -eq 11 ]
then
	echo Tail Wins
else
	echo Tie
fi
