#!/bin/bash

#local_function
local_demo(){
    local env="local_env"
    echo "$env"
}

#global_function
global(){
    message="This is regular variable inside"
    echo "$message"
}

#calling local 
local_demo
echo "local outside the function: $env"

#calling global
global
echo "outside: $message"
