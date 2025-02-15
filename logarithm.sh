#!/bin/bash

N="$1"

if ! [[ "$N" =~ ^[0-9]+$ ]] || [ "$N" -le 0 ]; then
  echo "Please provide a positive integer as input."
  exit 1
fi


result=$(echo "scale=2; l($N)/l(10)" | bc -l)


echo "Common Logarithm of $N is: $result"

