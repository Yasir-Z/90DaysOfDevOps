## What StatefulSets are and when to use them vs Deployments

Ans: StatefulSet is kubernetes advance feature which is used for statefull application stable identity, stable storage and ordered deployment and scalling.
while Deployment is a kubernetes feature which is used to for stateless applications it doesn't provide fixed identity, stable storge or orderd deployment.
## The comparison table

<img width="622" height="145" alt="image" src="https://github.com/user-attachments/assets/58272145-3c8a-4051-9c19-ecf233e4b68b" />


## How Headless Services, stable DNS, and volumeClaimTemplates work
- Headless creates separate DNS record for every pod and enables pod to pod communication and doesn't do load balancing.
- Stable DNS creates separate dns for every pod
- volumeClaimTemplates creates separate storage for every pod if pod is deleted it still persists data and provides upon pod restart.



## Screenshots of pods, PVCs, and DNS resolution

<img width="1795" height="564" alt="image" src="https://github.com/user-attachments/assets/886a299f-24ac-4ef8-9ffd-1486da00cc06" />

### DNS resolution

<img width="1440" height="672" alt="image" src="https://github.com/user-attachments/assets/860b54e0-5d18-4466-ac37-066919f9132f" />
