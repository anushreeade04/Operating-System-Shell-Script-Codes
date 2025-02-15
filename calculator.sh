#!/bin/bash


show_menu() {
    echo "Menu:"
    echo "1. Addition of 2 numbers"
    echo "2. Subtraction of 2 numbers"
    echo "3. Multiplication of 2 numbers"
    echo "4. Division of 2 numbers"
    echo "5. Modulo of 2 numbers"
    echo "6. Exit"
}

read_numbers() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
}

while true; do
    show_menu
    echo -n "Choose an option (1-6): "
    read choice

    case $choice in
        1)
            read_numbers
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            read_numbers
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            read_numbers
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            read_numbers
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $result"
            fi
            ;;
        5)
            read_numbers
            if [ $num2 -eq 0 ]; then
                echo "Error: Modulo by zero is not allowed."
            else
                result=$((num1 % num2))
                echo "Result: $num1 % $num2 = $result"
            fi
            ;;
        6)
            echo "Exiting the calculator. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 6."
            ;;
    esac
    echo
done

