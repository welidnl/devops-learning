#!/bin/bash

for variable in sequence 
do
 # code to be executed
done

for (( i=1; i<=5; i++ ))
do
    echo "Number: $i"
done

fruits=("apple" "banana" "orange")
for fruit in "${fruits[@]}"
do
    echo "Fruit: $fruit"
done

for number in $(seq 1 5) # seq command will generate a sequence of numbers from the first argument (1) until the last (5)
do
    echo "Number: $number"
done