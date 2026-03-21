## What problem Services solve and how they relate to Pods and Deployments

- Ans: Pods are ephemeral, they die restart and changes number of pods constantly and everytime when it's recreated
  it changes it's IP address. A service provides a stable ip address, stable dns name and load balancing between
  multiple pods, Service uses labels to connect with pods which is created by deployment.

## The difference between ClusterIP, NodePort, and LoadBalancer
- ClusterIP: is default service which is used for internal access only
- NodePort: it is exposed on node IP + port
-  LoadBalancer: used for external access via cloud provider

## How Kubernetes DNS works for service discovery

- Ans: maps Service names to stable IPs so Pods can discover and communicate with each other without hardcoding addresses.

## What Endpoints are and how to inspect them

- Ans: actual IP addresses of Pods behind a Service—they tell the cluster where traffic should go.

## Screenshot of your services and the test output

<img width="1567" height="447" alt="image" src="https://github.com/user-attachments/assets/17e759a8-fcce-40d1-b84a-6610896eff68" />
