#!/bin/bash

arithmetic(){
    local num1="$1"
    local num2="$2"

    multiplication=$(( $num1 * $num2 ))
    addition=$(( $num1 + $num2 ))
    subtraction=$(( $num1 - $num2 ))
    division=$(( $num1 / $num2 ))

}

echo "Please enter 2 numbers:"
read user_num1
read user_num2

arithmetic "$user_num1" "$user_num2"

echo " $user_num1 * $user_num2 = $multiplication"
echo " $user_num1 + $user_num2 = $addition"
echo " $user_num1 - $user_num2 = $subtraction"
echo " $user_num1 / $user_num2 = $division"
