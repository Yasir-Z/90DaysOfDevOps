## Review exercise 

## Processes & services:
- top --> list processed
- htop --> list process in interactive view
- systemctl list-units --type=service --> list all the services
- journalctl -u <service> --> show the logs
- ps aux | grep pid --> filter the process and service by id

## File skills:
- touch --> create file
- echo --> create and write file
- ls -l --> list all with permissions 
- chown --> change owner of file
- chmod --> change permisssions
- chgrp --> change group of file
- rm --> remove file
- rm -r --> remove recursively
- mkdir --> make directory
- rm -d --> remove directory

## Cheat sheet refresh
- top
- htop
- systemctl status
- journalctl -u
- grep command

## How do you check if a service is healthy? List the exact 2–3 commands you’d run first.
- systemctl status
- journalctl -u <service> to check logs
- ps aux | grep <service>

## How do you safely change ownership and permissions without breaking access?
- chmod 555 file
- chown 555 file
- chgrp 555 file
