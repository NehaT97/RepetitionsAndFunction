#!/bin/bash -x
function Palindrom( )
{

echo "Enter the number:"
read n

reverse=0
while [ $n -gt 0 ]

do
rem=$(( $n % 10 ))
n=$(( $n / 10 ))
reverse=$(( $reverse * 10+rem ))
done

echo $reverse
        if [ $reverse -eq $n ]
        then
                echo "number is palindrome"
        else
                echo "Number is not palindrome"
        fi


}

Palindrom
