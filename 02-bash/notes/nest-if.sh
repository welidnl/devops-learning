#!/bin/bash

age=18
grade=8

if [ $age -ge 18 ]; then
    echo "You are eligible based on your age"
    if [ $grade -ge 80 ]; then
        echo "You are eligible based on your grade"
        echo "You are eligible for a scholarship"
    else
        echo "You are not eligible for a scholarship"
    fi

else
    echo "Sorry, you are not eligible"
fi