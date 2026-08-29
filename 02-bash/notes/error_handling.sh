#!/bin/bash

# exit code of 0 indicates the script ran successfully and any other exit code indicates an error

num1=10
num2=0

if [ $num2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed"
    exit 1 # exits the script and prevents the script from crashing
fi

result=$(( num1 / num2 ))

echo "The result is: $result"

# ----------------------------------------------------------------

FILE="/nonexistent"

if [[ -f "$FILE" ]]; then # (-f) checks if a readable file exists
    echo "File exists"
else
    echo "File does not exist"
fi

command -v git 2>/dev/null # (-v) checks if a command exists | (2>/dev/null) sends error message to /dev/null discard the output

if [[ $? -ne 0 ]]; then # checks if exit code is equal to 0
    echo "git is not installed. Please install git."
    exit 1
else
    echo "git is installed"
fi

# -----------------------------------------------------------------

set -e # using this in the beginning of a script means it will stop executing as soon as it encounters a non 0 exit code

echo "Before the script"

nonexistent command # script stops here because of (set -e)

echo "after the script"

# ------------------------------------------------------------------

set -u # using this forces bash script to stop if a uninitialised variable is come across

echo "Hello $welid" # stops here because variable is not defined

set -u

x=10
y=20
z= $(( x + y + w )) # stops here and nothing is echoed because 'w' is not defined
echo "z equals: $z"

# -------------------------------------------------------------------

set -x # prints each command before its executed in the terminal, helps to follow the flow of the script

echo "this is a test"
x=10
echo "the value of x is: $x"

set +x # set +x can be used if you want another part of the script not to be debugged and print like normal.

echo "Starting the script"
x=10
y=20
z=$((x+y))
echo "the value of z is: $z"

# --------------------------------------------------------------------

set -eux # this combines all 3 commands

echo "this is a test"

echo "the value of x is: $x"

nonexistentcommand

# ---------------------------------------------------------------------

set -o nounset # functions just like set-u
set -o errexit # functions just like set -e
set -o pipefail # returns the exit status of the last command that exited with a non 0 status in a pipeline

set -o pipefail

cat nonexistentfile | grep "something" # fails immediately because the file doesn't exists and doesn't perform the next command in the pipeline