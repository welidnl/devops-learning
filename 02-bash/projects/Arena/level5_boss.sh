#!/bin/bash

mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

check_file(){
    local file="$1"

    if [ -f "$file" ]; then
        mkdir Archive
        mv "$file" Archive
    fi
}

check_file "Battlefield/knight.txt"

echo "Battlefield contents:"
ls Battlefield
echo "Archive contents:"
ls Archive