#!/bin/bash -x

function CheckPalindrom( )
{

#echo "Enter the number"
#read n
#for (( i=1;i<=2 ;i++ ))
n=$1
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi


}

CheckPalindrom 121 
