#!/bin/bash 

echo "Enter a Number"
read num

i=1
sum=0

while [ $i -le $num ]
do
	sum=`expr $sum + \( 10000 / $i \)`
	i=`expr $i + 1`
done
	echo "Sum n Series is"
	i=1

while [ $i -le 5 ]
do
	a=`echo $sum | cut -c $i`
	echo -e "$a\c"
	
	if [ $i -eq 1 ]; 
	then
		echo -e ".\c"
	fi
		i=`expr $i + 1`
done
