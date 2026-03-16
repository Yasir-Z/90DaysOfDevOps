### Why was Kubernetes created? What problem does it solve that Docker alone cannot?
Ans: kubernetes was created for scalling and healing. Whenever traiffice on container or app increase it slow downs the container 
     kubernetes scales it by making replicas of pods and if pods crashes it restarts pod which is known as self healing.

### Who created Kubernetes and what was it inspired by?
Ans: Google initially created kubernetes to run thausand of containers on different servers at a time which docker couldn't do. Later 
      it was made open source and now being maintained by Cloud Native Computing Foundation (CNCF).
### What does the name "Kubernetes" mean?
Ans: Kubernetes is a greek word which means Helmsman or a pilot who steers the ship because it manages the containers accross different 
so it was named as kubernete (Helmsman).

### Architecture Diagrame




### Which tool you chose (kind/minikube) and why
Ans: I created kind cluster with multiple nodes.

### What each kube-system pod does
Ans: It runs the infrastructure of a cluster. such as kubectl commands, apiservicers, etcd schedulers etc.

