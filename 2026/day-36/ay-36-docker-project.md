### Application details
I choosed a python flask project it's mult tier chat app used to send messages which captured messages in redis
cache and store then in backend mysql databse. 

### Dockerfile screenshort 

<img width="1479" height="399" alt="image" src="https://github.com/user-attachments/assets/3f742faa-b8f7-4319-bf2c-1cd057b65ca8" />

### Challanges Faced.
- Project itself was a big challange becuase it's first multi tier project i dockerized ever. Faced errors over and over.
- One of the challange was to make all stacks to talk to each other which required tables in in mysql db which i created
  manually and made the the app live and verified by send message from browser, ensured in it's captured in redis cache and
  stored at the backend in mysql database.

### Final images size 244MB 

<img width="1139" height="276" alt="image" src="https://github.com/user-attachments/assets/827e982b-6057-4d73-8371-b50109e414d6" />

### Dockerhub image link 

docker pull shepherd777/flask-app:v1.0
