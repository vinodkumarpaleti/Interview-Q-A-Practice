# This script is for addition of two numbers

#! /bin/bash
#Prompt user for input
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
#perform addition
sum=$((num1+num2))
echo "Sum of $num1 and $num2 is : $sum" 