#!/bin/bash 


function prime( )
{
num=$n
for((i=2; i<=num/2; i++))
do
  	if [ $((num%i)) -eq 0 ]
  		then
    		echo "$num is not a prime number."
  		return    
  	fi
done
echo "$num is a prime number."
}
 


function Palindrom( )
{
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
#echo $reverse
	if [ $number -eq $reverse ]
	then
    		echo "$number is palindrome"
	else
        	echo "$Number is not palindrome"
	fi

checkBoth $reverse
}
	
function  checkBoth( )
{
	test=$1;
	echo " "
	#echo "test" $test
	x=$test
	for((i=2; i<=x/2; i++))
	do
  	if [ $((x%i)) -eq 0 ]
  	then
    	echo "$num is palindrom but not a prime number."
  	return
 	fi
	done
        echo "$num is palindrom as well as prime number."
	
}


echo "Enter the number"
read n 
echo " "

prime
Palindrom


