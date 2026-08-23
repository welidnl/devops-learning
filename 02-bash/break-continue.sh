#!/bin/bash

for (( i=1; i<=5; i++ ))
do

    if [ $i -eq 3 ]
    then 
        break # exits the inner most loop immediately regardless of the condition
    fi
    echo "Number: $i"

done


for (( i=1; i<=5; i++ ))
do

    if [ $i -eq 3 ]
    then 
        continue # skips the current value and continues the loop
    fi
    echo "Number: $i"

done

count=1

while true # the loop will continue indefinetely unless theres a break statement
do

    echo "Count: $count"
    ((count++))
    if [ $count -eq 4 ] # when the value reaches 4 it will end the loop
    then
        break
    fi

done


count=1

while [ $count -le 5 ]
do

    if [ $count -eq 3 ]
    then
        ((count++)) #once it reaches 3 it will then skip it and increment the value by 1 and continue without printing
        continue
    fi
    echo "Count: $count"
    ((count++))
done
