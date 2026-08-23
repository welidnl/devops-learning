#!/bin/bash

while condition
do
    #code to be executed if the condition is true until it becomes false and then the loops finishes
done

count=1

while [ $count -le 5 ]
do
    echo "count: $count"
    ((count++)) # adds 1 for each iteration until it reaches 5 after which the loop will end
done



fruits=("apple" "banana" "orange")
index=0 # variable used to keep track of current index in the array

while [ $index -lt ${#fruits[@]} ] # will comapre the index to the number of elements in the array
do
    echo "Fruit: ${fruits[$index]}" # this echos the current element of the array
    ((index++)) # increases the value of the index by 1 until it reaches the end of the array
done