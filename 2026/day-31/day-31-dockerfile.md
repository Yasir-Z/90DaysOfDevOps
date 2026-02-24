### Dockerfile: Build Your Own Images
## Task 1 : First Dockerfile
FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update && apt install curl -y
COPY . .
CMD ["echo", "Hello from my custom image!"]Dockerfile Instructions

## Task 2: Dockerfile Instructions
FROM python:3.14
WORKDIR /app
RUN pip install flask
COPY . .
EXPOSE 80
CMD ["python", "app.py"]

## Task 3:ENTRYPOINT vs CMDin fu
CMD can be igonred with cusomized command while ENTRYPOINT can't be igored customized
commands it take them as arguments.

## Task 4: Build a Simple Web App Image
- Dockerfile:
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
- Command: docker run -d -it -p 8080:80 my-website:v1

## Task 5: .dockerignore
Built html app with nginx:alpine base image and verified .dockerignore file by entering
into container and found that only index.html file visible.

## Task 6: Build Optimization
Note: Dockerfile layers should be ordered in a way that base image shall be written on top 
then system dependencies then app dependencies then copy source code. In future if there is 
change in the code and upon build docker will build less time in building the image bacause it
will use cache and execute directly copy layer which will save time. 
