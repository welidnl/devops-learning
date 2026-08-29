#!/bin/bash

read_file(){
    local file_path="$1"

    while IFS= read -r line; do  # (IFS) make sure white spaces are preserved | (read) reads each line of the file |(-r) prevents '/'' as being interpreted as escape characters
        echo "$line" # reads the line thats being read for each iteration
    done < "$file_path" # inputs the local variable thats takes in the paramater when script is being ran
}

read_file "./log.txt"

# ----------------------------------------------

process_file(){
    local filepath="$1"

    cat "$filepath" | while IFS= read -r line; do
        echo "Processing line: $line"
    done

}

process_file "./log.txt"