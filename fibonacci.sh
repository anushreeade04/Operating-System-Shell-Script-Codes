#!/bin/bash

fibonacci_series() {
    n=$1
    a=0
    b=1

    if [ "$n" -lt 1 ]; then
        echo "Error: The number of terms must be a positive integer."
        exit 1
    fi

    echo "Fibonacci series up to $n terms:"

    echo -n "$a"

    
    for (( i=2; i<=n; i++ )); do
        echo -n " $b"
        next=$((a + b))
        a=$b
        b=$next
    done

    echo
}


echo -n "Enter the number of terms: "
read n


if ! echo "$n" | grep -qE '^[0-9]+$'; then
    echo "Error: Enter a valid positive integer."
else
    fibonacci_series "$n"
fi

