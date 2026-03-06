### Container commands
- run: starts the container from custom image or dockerhub image registery 
- ps: lists the running container
- stop: used to stop running container 
- rm: removes stopped container 
- exec: used to enter into running container 
- logs: lists the logs of container

### Image commands
- build: builds image from Dockerfile or by pulling dockerhub registery 
- pull: pulls image from dockerhub
- push: used to push image on dockerhub 
- tag: used to tage image before pushing to dockerhub
- ls: lists the existing images 
- rmi: used to remove image

### Volume commands 
- create: used to create volume
- ls: lists existing volumes 
- inspect: inspects volume 
- rm: removes volume

### Network commands
- create: creates custome network
- ls: lists existing networks 
- inspect: used to inspect the network 
- connect: connects the network

### Compose commands
- up: makes image and runs the container
- down: stops running container 
- ps: list running containers
- logs: opens the log of containers
- build: used to build the image and container again

### Cleanup commands 
- prune: used to remove dangling images and stopped containers
- system df: shows disk free space

### Dockerfile instructions
- FROM: used to select base image
- RUN: runs commands inside container 
- COPY: used to copy the files from local machine(source) to container(destination) 
- WORKDIR: Creates directory inside the container
- EXPOSE: shows port on which app can be accessed
- CMD: instructions to run once container is built in and running 
- ENTRYPOINT: Similar to CMD but superceedes all other instructions
