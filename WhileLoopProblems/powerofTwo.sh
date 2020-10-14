
#!/bin/bash -x

echo "Table of powers of 2"
read -p "Enter your input:" x
n=1

while [ $n -lt $x ]
do
	if [ $n -gt 8 ]
	then
		exit 1
	fi

	a=1;
	for (( i=0;i<$n;i++ ))
	do
	a=$((2*$a))
	done
	echo a^$n=$a ;

	n=$(( $n + 1 ))
done
