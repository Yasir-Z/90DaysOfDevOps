## Screenshot of outputs after terraform apply

<img width="1519" height="760" alt="image" src="https://github.com/user-attachments/assets/a8bd3f68-8e62-4abc-8e28-eda6ffadb5c0" />

## Explanation of variable precedence with examples
Ans: Variable precedence is as priority of variables from 1 to 5 such as:
priority 1: Command line flags suxch -file-var
priority 2: terraform.tfvars file 
priority 3: *.auto.tfvars
priority 4: Environment Variables
priority 5: default (Whatever is inside the variable block)

## Five built-in functions you found most useful
1. lookup(): find values in maps
2. merge(): used to merge tags
3. element(): to get an element from list
4. file(): to utilize external scripts or keys 
5. cidrsubnet(): to calculate ip address


## The difference between variable, local, output, and data
variable: values we provide inside the code in order to avoid hard coding ususally from outside the code file 
local: valuse we use to avoid hard coding from inside the code file 
output: used to obtain valuse from inside the code in output 
data: data block used to fetch existing cloud resources
