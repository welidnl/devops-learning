#!/bin/bash

mkdir bash_demo
echo "Directory 'bash_demo' created."
cd bash_demo
echo "This file was created by a Bash script on $(date +%d-%m-%Y)" > demo.txt
echo "File 'demo.txt' created."
echo "File contents: $(cat demo.txt)"
