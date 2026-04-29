## Linux File System Hierarchy

/ - Starting point of linux file system

/home - user home directory 

/root - root user home directory

/etc - configuiration files

/var/log - contains all log files

/tmp - temporary files

/bin - Essential command binaries

/usr/bin - User command binaries

/opt - Optional/third-party applications

## Scenario 1: Service Not Starting

systemctl status myapp : check the status of service e.g running, exited

systemctl list-unit --type=services : list all the services in order to find myapp service 

systemctl list-unit --type=services | grep myapp : search for myapp service in all services list

journalctl -u myapp -f : list the logs of services 

systemctl is-enabled myapp : check if service is enabled to start at system boot or no 

## High CPU Usage

top, htop : live cpu usage

ps aux --sort=-%cpu : sort process by cpu usage 

1236, 1199 : top cpu utilizing process 

## Finding Service Logs

<img width="1361" height="536" alt="image" src="https://github.com/user-attachments/assets/752e0c71-fae1-447f-b7b2-9c93a5ac5db9" />

<img width="1041" height="245" alt="image" src="https://github.com/user-attachments/assets/39584862-1d57-4e4a-a1c0-1b84babd9410" />

<img width="1237" height="245" alt="image" src="https://github.com/user-attachments/assets/4e553c6a-14ca-406a-8a64-c03855e949cd" />

## File Permissions Issue

ls l : check the current premissions 

chomod : assign new permission 














