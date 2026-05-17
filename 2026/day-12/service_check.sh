#!/bin/bash

SERVICE=nginx

read -p "Do you want to check the status? (y/n)" check

if [ "$check" = "y" ]; then
    systemctl status "$SERVICE"
else
    echo "Skipped"
fi
