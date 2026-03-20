## What namespaces are and why you would use them
- Ans: Namespaces are used to manage or isolate resources in separate environments, avoid naming conflicts and apply
       defferent policies in different namespace separately.

## Your Deployment manifest and an explanation of each section


apiVersion: apps/v1  - this is version of kubernetes API which will be used for the resource.
kind: Deployment     - defines the type of resources which is "deployment"
metadata:            - define is the resource 
  name: nginx-deployment  - name of resource 
  labels:            - label to interconnect resource 
    app: nginx       - name of label
spec:                - 
  replicas: 3        - defines the number of pods to be created
  selector:          - selectors to define which resource to replicated
    matchLabels:
      app: nginx
  template:           - type of pod to be replicated
    metadata:
      labels:
        app: nginx
    spec:            - container specification to be created inside the pod
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80

### What happens when you delete a Pod managed by a Deployment vs a standalone pod.
- Ans: When standalon pod deleted it is terminated parmanently while pod created by deployment is
       is automatically recreated once created. 

### How scaling works (both imperative and declarative)
- Ans: Scalling creates desired number of pods. 
### How rolling updates and rollbacks work
- Ans: Rolling update used to update images and version of the containers running in the pods.

### Screenshot of your Deployment and Pods running

<img width="1465" height="730" alt="image" src="https://github.com/user-attachments/assets/410ca51b-571e-4dce-b57c-899ec1ab5375" />

# Deployment and pods running

<img width="1463" height="385" alt="image" src="https://github.com/user-attachments/assets/db902a79-71c6-47d7-8a4e-db9fe1ee39c8" />

