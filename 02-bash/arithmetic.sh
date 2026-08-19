#!/bin/bash

num1=5
num2=10

result=$((num1 + num2))

echo "The sum of $num1 and $num2 is: $result"  

length="$1" #you can also use parameters with arithmetic expansions to pass arguments this enables you to accept user input.
width="$2"

Area=$((length * width))

echo "The total Area of $length and $width is: $Area"
#arithmetic expansions/equations can be run by using the $ and double brackets (())


