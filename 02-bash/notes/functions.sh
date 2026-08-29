# #!/bin/bash

# # BASIC FUNCTIONS:
function_name(){

    #code to be executed
}

hello_world(){
    echo "Hello World!"
}

hello_world #functions run when called upon by their name

greet_person(){
    local name="$1" #first element put in as a parameter will be input as the value | name is a positional parameter stored ina  local variable called name
    echo "Hello, $name!"
}

greet_person "Welid" # when calling the function you have to pass in the parameter. In this instance the $name
greet_person "Mohammed" # you can run the function again and use a different value for the variable

# # START OF PARAMETERS:
print_arg(){
    echo "Number of arguments: $#" # calls the amount of arguments put in
    echo "Script name: $0" # special variable that holds the name of the script
    echo "The first argument is: $1" # calls the first argument that is put in
    echo "The secod argument is: $2" # calls the second argument thats put it
    echo "All arguments: $@" # calls all the arguments that have been put in
}

print_arg "Mohammed" "Ali"

#positional parameters are numbered like 1 or 2 and special parameters are like # and @ which display further info

# USER INPUT:

greet_user(){
    echo "what is your name?"
    read name # read command captures the users input and stores it in the variable stated after it
    echo "Hello, $name!"

}

greet_user

greet(){
    local name # assign local variable
    if [ $# -eq 0 ]; then # checks if the number of arguments are equal to 0 then it will echo the following so it will ask for user input
        echo "What is your name?"
        read name
    else
        name="$1"
    fi

    echo "Hello, $name!"

}

greet "Welid" # if parameter is passed in after the script it will not ask for user input

# HANDLING BAD DATA

validate_age(){
    local age=$1

    if [[ ! $age =~ ^[0-9]+$ ]]; then # (^[0-9]+$) expression used to validate if the parameter is a number | a conditional statement
        echo "Invalid age. Please provide a numeric value"
        return 1 # non-zero exit code meaning you've encountered an error
    fi

    if (( age < 18 )); then 
        echo "Sorry, you must be at least 18 years old."
        return 1
    fi

    echo "congratulations, you are eligible"
    return 0
}

echo "Please enter your age:"
read user_age # ask for user prompt and assigning it to a variable stated after 

validate_age "$user_age" # the user input is being used as a parameter in the function
exit_code=$?

if (( exit_code != 0 )); then # if the exit code is not equal to 0 it will echo the following
    echo "Validation failed"
fi

# FUNCTION SANITISING USER INPUT

sanitise_string(){
    local input=$1
    local sanitised_input=${input//[^a-zA-Z0-9]/} # ({input//[^a-zA-Z0-9]/}) this will remove any characters that are not alphanumeric

    echo "$sanitised_input"
}

echo "Please enter a username:"
read username_input

sanitised_username=$(sanitise_string "$username_input") # assign value returned by the function and then the user input
echo "Sanitised username: $sanitised_username"

# PIPING

get_file_count(){
    local directory="$1"
    local file_count

    file_count=$(ls "$directory" | wc -l)

    echo "Number of files in $directory: $file_count"

}

get_file_count "./"

search_logs(){
local search_term="$1"
grep "$search_term" var.sh | awk '{print $2}' # searches the names file in this case (var.sh) and prints the second column

}

search_logs "age" # searches the file stated in line 122 for the argument passed in here (age) and will then print all the lines that include this word from said file


# Writing files----------------------------------------------

write_to_file(){
        local file_path="$1"
        local data="$2"

        echo "$data" > "$file_path" # can be used to create a new file or modify an existing file by changing its contents
}

write_to_file "log.txt" "Hello"

# Check sums--------------------------------------------------

# cryptographic hashes taht provide a unique fingerprint for a file toa llow for verification of authenticity

calculate_md5sum(){
    local file_path="$1"
    md5sum "$file_path" # (md5sum) used to read out the md5sum of a file | (sha256) is another command used in place of the other one to check for checksums
}

calculate_md5sum "log.txt"

#----

comapre_checksums(){
        local checksum1="$1"
        local checksum2="$2"

        if [[ "$checksum1" == "$checksum2" ]]; then
            echo "Checksums match. File is intact"
        else
            echo "Checksums do not match. File is compromised"
        fi
}

comapre_checksums "123" "123"
