#!/bin/bash

sum=0 

for num in "$@"; do
	sum=$((sum + num))
done

echo "The summation of the given numbers is : $sum"
