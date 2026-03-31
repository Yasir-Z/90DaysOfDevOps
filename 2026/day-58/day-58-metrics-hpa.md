## What the Metrics Server is and why HPA needs it

Ans: Metrics servicer is a monitoring component of kubernetes which monitors live resource usage e.g CPU and Memory, it provides
real time data to kubectl to analyze the usage of resources. HPA need this data to make auto scaling decisions such as when to 
create and delete pods.

## How HPA calculates desired replicas

Ans: Horizontal Pod Autoscaler compares current usage with target usage and keep creating or deleting pods accordingly.


## The difference between autoscaling/v1 and v2

- autoscaling/v1: it supports on CPU utilization as marics and based on that autoscale the pods.

- autoscaling/v1: support multiple utilization matrics such as CPU, memory, custom metrics, external metrics. It can define average value
  and utilization for each materics. It is used for modern autoscalling.


## Screenshots of kubectl top, HPA events, and pod scaling

- HPA events

<img width="1764" height="741" alt="image" src="https://github.com/user-attachments/assets/d4682ba3-c98c-4a2b-8e51-8c6000ec0383" />

- Pod autoscalling

<img width="1771" height="223" alt="image" src="https://github.com/user-attachments/assets/af97faca-8e36-4e21-a307-4a86c9e4ade3" />

- Kubectl top

<img width="1684" height="277" alt="image" src="https://github.com/user-attachments/assets/f76dee99-8024-4fbb-bd31-b3770af0acf0" />
