#!/bin/bash 

read -p "Enter a Number: " NUM
power=1
while [ $NUM -ne 0 ]
do
	power=$(( power *2 ))
	echo $power
	if [[ $power -le $NUM ]]
	then
		echo $power
	fi
	
	((--NUM))
done
