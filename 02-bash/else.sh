#!/bin/bash

age=15

if [ $age -gt 18 ]
then
    echo "You're an adult"
else
    echo "You're not an adult"
fi 

score=86

if [ $score -ge 90 ]
then
    echo "Great!!"
elif [ $score -ge 80 ] # elif allows you to add another clause if the first one fails
then # elif is followed by its own then statement
    echo "Good!"
else
    echo "Fine"
fi
