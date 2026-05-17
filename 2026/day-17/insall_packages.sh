#!/bin/bash

list=("curl" "wget")

for package in "${list[@]}"
do 
    if dpkg -s "$package" >/dev/null 2>&1; then

        echo "$package is installed"
    else
        echo "Installing package..."
        sudo apt install -y "$package"
    fi
done

#list all packages
echo "Packages:" 
dpkg -l 
