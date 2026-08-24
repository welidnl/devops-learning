#!/bin/bash

Car_purchase(){
    local current_account=$1

    if [ $current_account -lt 10000 ]; then
        echo "You have insufficient funds"
        return 1    
    fi
    
    echo "You can purchase this brand new car!"
}

echo "Enter amount of funds you have:"
read account_funds

Car_purchase "$account_funds"