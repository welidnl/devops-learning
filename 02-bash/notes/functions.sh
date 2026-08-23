#!/bin/bash

function_name(){

    #code to be executed
}

hello_world(){
    echo "Hello World!"
}

hello_world #functions run when called upon by their name

greet_person(){
    local name="$1" #first element put in as a parameter will be input as the value
    echo "Hello, $name!"
}

greet_person "Welid" # when calling the function you have to pass in the parameter. In this instance the $name
greet_person "Mohammed" # you can run the function again and use a different value for the variable
