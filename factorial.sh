#!/bin/bash
factorial(){
	num=$1
	result=1
	while [ $num -gt 1 ] ; do
		result=$((result * num))
		num=$((num - 1))
	done
	echo "Factorial : $result"
}

echo -n "Enter a positive integer :"
read number

if ! echo "$number" | grep -qE '^[0-9]+$'; then 
	echo "Error. Enter a positive integer"
elif [ "$number" -eq 0 ]  ; then
	echo "Factorial : 1"
else
	factorial $number
	
fi
