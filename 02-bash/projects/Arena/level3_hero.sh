#!/bin/bash

check_file(){
    local file="$1"

    if [ -f "$file" ]; then
        echo "Hero Found!"
    else
        echo "hero not found"
    fi
}

check_file "hero.txt"