#!/bin/bash

read -p "Enter the number: " number

if [ "$number" -ge 0 ]; then 
    echo "Positive"
else
    echo "Negative"
fi
