#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: ./greet.sh"
else
    #echo "Hello: $@"
    echo "Hello: $1"
    #echo "Hello: $0"
fi

echo "Total_Args: $#"
