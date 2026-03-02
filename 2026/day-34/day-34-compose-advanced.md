### Task 1: Build Your Own App Stack

<img width="1235" height="672" alt="image" src="https://github.com/user-attachments/assets/7d7e2bbd-6656-4064-a9ef-d916a63708f1" />

### Task 2: depends_on & Healthchecks

<img width="1391" height="802" alt="image" src="https://github.com/user-attachments/assets/b8fa0534-5eb5-42d6-a5f2-aaaf3aa65c70" />

### Task 3: Restart Policies
Note: restart:always policy is used when container is required to keep running always such as cache containers they should be always in 
running mode if container stopped it can't catch the cache.
While restart:on-failure is used when there is a job assigned to container and it has to finish it in this case container keeps runnig 
untill the job e.g. updates are not completed even if there is failure container will restart again.

### Task 4: Custom Dockerfiles in Compose
<img width="1179" height="708" alt="image" src="https://github.com/user-attachments/assets/be6d8be4-e90b-4010-8694-f6c2f8bd85a4" />

### Task 5: Named Networks & Volumes

<img width="928" height="859" alt="image" src="https://github.com/user-attachments/assets/1c411a24-0a5e-4671-9dfe-4268b760aad7" />

## Added labels 
<img width="937" height="757" alt="image" src="https://github.com/user-attachments/assets/05f9391c-30e1-45db-83e3-981ce428c416" />

### Task 6: Scaling (Bonus)

<img width="1642" height="557" alt="image" src="https://github.com/user-attachments/assets/99a25170-63a3-471a-b1b2-f593fc817590" />

Note: Simple scalling can't work with port mapping because 3 containers can't run on single port at the same time in to fix this ports range 
can be provided while port mapping in yaml file. 
