### Task 1
# Pull the nginx, ubuntu, and alpine images from Docker Hub --> docker pull ubunutu, nginx, alpine 
# List all images on your machine — note the sizes --> docker images 
# Compare ubuntu vs alpine — why is one much smaller? --> ubuntu:78.1MB - alpine:8.44MB
# Inspect an image — what information can you see? --> id, RepoTags, RepoDigests, parent, comments, creation date, docker version, author, size, OS 
# Remove an image you no longer need --> docker rmi nginx

### Task 2 
# Run docker image history nginx — what do you see? --> IMAGE, CREATED, CREATED BY, SIZE, COMMENT
# Write in your notes: What are layers and why does Docker use them?
- Ans: Each step or instruction on Dockerfile is a layers. Layers are the steps docker deamon takes to buld the image,docker uses these layers to optimise the performance by reusing them.

### Task 3 Container Lifecycle 
# Create a container (without starting it)
- Start the container --> docker run / docker start 
- Pause it and check --> status docker pause 597f1bc75c9c
- Unpause it --> docker unpause 597f1bc75c9c
- Stop it --> docker stop 597f1bc75c9c
- Restart it --> docker restart 597f1bc75c9c
- Kill it --> docker kill 597f1bc75c9c
- Remove it --> docker rm 597f1bc75c9c

### Task 4 Working with Running Containers
# Run an Nginx container in detached mode --> docker run -d -it --name nginx-container -p 8000:8000 nginx
# View its logs --> docker logs a6650f0bcf3e
# View real-time logs (follow mode) --> docker logs -f a6650f0bcf3e
# Exec into the container and look around the filesystem --> docker exec -it a6650f0bcf3e bash
# Run a single command inside the container without entering it--> docker ps a6650f0bcf3e ls -l /home
# Inspect the container — find its IP address, port mappings, and mounts --? 172.17.0.2, 8000:80, null

## Task 5 
# Stop all running containers in one command --> docker stop $(docker ps -aq)
# Remove all stopped containers in one command --> docker rm $(docker ps -aq)
# Remove unused image --> docker rmi -f $(docker images -a -q)
# Check how much disk space Docker is using -- > docker system df 
<img width="859" height="239" alt="image" src="https://github.com/user-attachments/assets/e3f07892-0190-4abf-9a74-21fb2e724d63" />

