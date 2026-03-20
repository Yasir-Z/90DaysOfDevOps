## The four required fields of a Kubernetes manifest and what each does

- kind: kind of resource e.g. pod, cluster, namespace, depeloyment
- apiVersion: Version of resource 
- metadata: Defines identity of resource such as name, labels etc
- spec: Defines the desired state to run such as replicas, containers, volume etc.

## Difference between imperative (kubectl run) and declarative (kubectl apply -f)

### Imparative: it creates resources directly with commands without manifest file.

### Declerative: It creates resources with manifest files rather than direct from commands.

## Screen short of running pods

<img width="1139" height="241" alt="image" src="https://github.com/user-attachments/assets/0c04568a-051a-49d6-99e6-3ba450fd902b" />

## What happens when you delete a standalone Pod?
- Ans: when standalone pod deleted then it's terminated and removed permanently and containr is stopped with can be restarted or recreated because it's standalone
  and not having high level object where from it is created. 
