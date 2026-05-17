#!/bin/bash

FILE="/home/ubuntu/file_check.sh"

if [[ -f "$FILE" ]]; then
    echo "$FILE exisits"
else
    echo "$FILE doesn't exist"
fi
