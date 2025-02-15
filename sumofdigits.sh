#!/bin/bash

sumofdigits() {
	num=$1
	sum=0
	
	while [ "$num" -gt 0 ]; do
		digit=$((num % 10))
		sum=$((sum + digit))
		num=$((num / 10))
	done
	
	echo "Sum of digits : $sum"
}

echo -n "Enter a positive number : "
read number

if ! echo "$number" | grep -qE '^[0-9]+$'; then
    echo "Error: Enter a valid positive integer."
else
    sumofdigits "$number"
fi

