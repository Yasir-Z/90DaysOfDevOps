### Task 1
- What is container and why do we need them?
- Ans: Docker container is package which containes code of application and dependencies of which required to run the application, it's lightweight, runs in isolated environment without disturbing other apps running on the server.
- Containers vs Virtual Machines — what's the real difference?
- Ans: Containers are lightwieght, faster and uses less resources on the other hand vm is full OS which is takes time to start and slower in comparison to container.
- What is the Docker architecture? (daemon, client, images, containers, registry)
- Ans: Client --> Daemon -- > Registery --> Images --> Containers

### Task 2
- Docker installatio and verification
- sudo apt update
- sudo apt install docker.io
- docker version
- docker run hell-world
- docker ps
- docker ps -a

### Task 3 
# Run an Nginx container and access it in your browser
- docke build -t nginx-image
- docker run -d -it -p 80:80 nginx-image
# Run an Ubuntu container in interactive mode — explore it like a mini Linux machine
-  docker run -it ubuntu
-  docker exec -it 45dc1126cd16 bash
# List all running containers
- docker ps
# List all containers (including stopped ones)
- docker ps -a
# Stop and remove a container
- docker stop <container-id> && docker rm <contianer-id>

### Task 4
# Run a container in detached mode — what's different?
# docke run -d <container-id> --> containers run in backgroud
# Give a container a custom name --> --name
# Map a port from the container to your host --> -p 80:80 
# Check logs of a running container --> docker logs <container-id>
# Run a command inside a running container --> docker exec -it <container-id> bash


