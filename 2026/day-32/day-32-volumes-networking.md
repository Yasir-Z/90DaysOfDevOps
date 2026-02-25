### Docker Volumes & Networking
### Task 1: 
Note: I created postgress image, ran a container and added a row inside the PGDB.
Then stopped and removed container and ran new container access psdb but previously
added row was gone with container removal.
Reason: Because docker volume wasn't made persistent wit host storage.

### Task 2: Named Volumes
Note: Upon attached the volum it gets data persistent and even docker container 
is removed data exists on host machine and be restored with -v command.

### Task 3: Bind Mounts
Note: Bind mount and dokcer vloums both are used to presiste data in case the 
container crashed or removed data is persistent on local machine. docker volums 
are used by docker containre while the bind mounts are handled by host directory.
vlumes stores data on docker and bind mount used to sync data from local directory 
to docker container.

### Task 4: Docker Networking Basics
Note: docker containers which are running on default bridge network can't ping each 
other by name. IP address need to be used to ping containers on default bridge network.

### Task 5: Custom Networks
Note: Multiple docker containers can ping each other with name if they are on custom
network instead of IP. Dockers provides an additional feature to custom network called
DNSName which is disabled in default bridge network. 

Task 6:  Put It Together

<img width="877" height="438" alt="image" src="https://github.com/user-attachments/assets/2fad52b0-6bd0-450b-8894-636ee13a4e37" />

