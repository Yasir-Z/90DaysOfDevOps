## Used commands

- cd .shh --> move to access public key

- chmod 400 "linux-kp.pem" --> change ownership of public key

- ssh -i "linux-kp.pem" ubuntu@ec2-44-222-139-100.compute-1.amazonaws.com --> to connent aws with local machine with ssh

- apt update --> to update the system

- apt instal nginx --> install nginx

- apt install docker.io --> install docker

- systemctl status nginx

- journalctl -u nginx --> to check nginx logs

- jouurnalctl -u nginx > nginx-logs.txt

- scp -i /root/.ssh/linux-kp.pem ubuntu@44.222.139.100:~/nginx-logs.txt . --> to download file on local

- cat nginx-logs.txt 

## Nginx in browser screen short

<img width="1507" height="339" alt="image" src="https://github.com/user-attachments/assets/afb7526f-1f45-494e-a06e-8584c603519a" />
