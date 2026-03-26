## Why containers need persistent storage

Ans: Usually how containers behaves once delete it's all data is deleted alongs the container then comes 
persistent volume which persists data even if container deleted.

## What PVs and PVCs are and how they relate

Ans: PV and PVC are used to presist data in kubernetes cluster once pod is deleted data also gets deleted similar to 
container then comes PVC which request storage for pod from PV and claims it and once claimed even if pod deleted data
remains there if pod recreated with same pvc.

## Static vs dynamic provisioning

Ans: static is more manual work where admin creates pv and then claim it by creating pvc while in dynamic provisioning 
admin dont need to create pv manually kubernetes creats it from pvc by storage class.

## Access modes and reclaim policies

Ans: Access modes decides how pod can access pv such as RWO, RWX ROX while reclaim policy decides the future of pv upon 
delete pvc, e.g retain, delete, recyle.
