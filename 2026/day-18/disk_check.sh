#!/bin/bash

#Disk check with df -h
check_disk(){

    echo "disk:"
    df -h /
}

# Memory check with free -h
check_memory(){

    echo "Memory:"
    free -h
}

check_disk
check_memory
