#!/bin/bash

# if statement starts with an 'if' and ends with 'fi'

: 'comparison operators are used to build if statements such as:
eq = equals
ne = not equal to
lt = less than
gt = greater than
le = less than or equal to
ge = greater than or equal to 
'
age=25

if [ $age -gt 18 ]
then
    echo "You are an adult"
fi


: 'logical operators:

&& = AND
|| = OR
etc
'

grade=77

if [ $grade -ge 90 ] || [ $grade -le 100 ]

then 
    echo "excellent"
fi


: 'String comparison:
== and != equals to and not equals to respectively to compare strings
'

name="mohammed"

if [ $name == "Welid" ]
then
    echo "Hello $name"
fi