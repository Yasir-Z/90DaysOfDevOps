#!/bin/bash

set -euo pipefail

#Print host and os
host_os(){

    host=$(hostname)
    OS_TYPE=$(uname -s)

    echo "Host is $host and OS is $OS_TYPE"
}
#Find system uptime
sys_uptime(){

    system_uptime=$(uptime)
    echo "sys_uptime is: $system_uptime"
}

#Print disk usage
disk_usage(){

    echo "disk info is:"
    df -h
}

#Print memeory usage
memory_info(){

    echo "Memory info is: "
    free -h
}

#Top 5 process
top_proc(){

    ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 5
}

#Main function calling all functions
main(){
host_os
sys_uptime
#disk_usage
memory_info
top_proc
}
main
