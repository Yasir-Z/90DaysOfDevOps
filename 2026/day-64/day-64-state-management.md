## Screenshot of state file in S3 bucket

<img width="1642" height="436" alt="image" src="https://github.com/user-attachments/assets/8a0d4809-1475-4876-b5fc-9793a6fe7889" />

## Screenshot of the lock error from Task 3

<img width="1747" height="603" alt="image" src="https://github.com/user-attachments/assets/5d4820d4-7952-420d-92c4-8a0970b0bc13" />

## Steps I followed for terraform import and the result

- created s3 bucket on console
- created s3 resource in config file
- imported console s3 bucket on command line with command
- verified on terminal with "terraform state list" command
- did terraform plan
- found no-changes to apply and bucket imported

## Explanation of state drift with real example

Ans: Whenever there is change and mismatch in remote resources and aws console state deift happens which need to be solved by modificatoin of either consol or remote state to make 
same at both places. 

## state mv, state rm, import, force-unlock, refresh

- state mv: used to rename the resource
- state rm: used to remove the resources from remote
- import: used to import resource from console to terminal
- force-unlock: to unlock the locked state
- refresh: to refresh the state 
  
