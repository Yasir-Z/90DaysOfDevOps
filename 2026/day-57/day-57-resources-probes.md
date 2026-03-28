## Requests vs limits (scheduling vs enforcement)

- Ans: Requests are minimums resources which are allocated for the container to run while limits are the maximum resources a container can request.

## What happens when CPU or memory limits are exceeded

- Ans: OOMKilled

## Liveness vs readiness vs startup probes

- Liveness: It checks that the container is ready or no if not it restarts the container.
- Readiness: It detects if container is ready for traffic or no if pod is not ready there is no traffic.
- Startup: It detects slow starting of container. 


## Screenshots of OOMKilled, Pending, and probe events

- LivnessPorb SS:

<img width="1532" height="365" alt="image" src="https://github.com/user-attachments/assets/43dd0bd8-42a3-4a7a-a80e-81e93dc4354e" />

- ReadinessProb

<img width="1481" height="716" alt="image" src="https://github.com/user-attachments/assets/811bbb74-24e9-4f04-9473-3ad357ee430b" />

<img width="1367" height="663" alt="image" src="https://github.com/user-attachments/assets/b9bb0c02-7fae-4082-b583-f8fd7a766da7" />

- Startup Probe

<img width="1273" height="261" alt="image" src="https://github.com/user-attachments/assets/327f1ed4-ae89-418e-93e2-60d11e15e8cc" />
