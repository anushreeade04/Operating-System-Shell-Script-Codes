#!/bin/bash

bubblesort(){
	local arr=("$@")
	local n=${#arr[@]}
	for ((i = 0; i < n; i++)); do
		for ((j = 0; j < n - i - 1; j++)); do
			if((arr[j]>arr[j+1])); then	
				temp=${arr[j]}
				arr[j]=${arr[j + 1]}
				arr[j + 1]=$temp
			fi
		done
	done
	
	echo "Sorted array : ${arr[*]}"
}

bubblesort "$@"
		
