#!/bin/bash

echo -n "Enter a year"
read year

if ! echo "$year" | grep -qE '^[0-9]+$'; then
	echo "Error. Enter a valid year : "
	exit 1
fi 

if [ $((year % 4)) -eq 0 ]; then
	if [ $((year % 100)) -eq 0 ]; then
		if [ $((year % 400)) -eq 0 ]; then 
			echo "$year is a leap year"
		else
			echo "$year is not a leap year"
		fi
	else
		echo "$year is a leap year"
	fi 
else 
	echo "$year is not a leap year"
fi
