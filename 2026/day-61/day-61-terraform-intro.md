## IaC explanation in your own words (3-4 sentences)

Infrastructure as code is mindset in which infrastructure is being provision with code by using different tools such as terraform it enhance performance 
of software delivery to market with miniming cose, effeciency and with less errors.

## Screenshot of terraform apply creating your S3 bucket and EC2 instance

<img width="1412" height="846" alt="image" src="https://github.com/user-attachments/assets/794659b6-d780-42a1-b400-17337c0838e1" />

## Screenshot of the resources in the AWS console

<img width="1617" height="476" alt="image" src="https://github.com/user-attachments/assets/0808306a-5b17-41b5-baf1-9fe947b2e9d5" />


## What each Terraform command does (init, plan, apply, destroy, show, state list)

- terraform init: Initializes the project by downloading providers and setting up the working directory.
- terraform plan: Shows what changes Terraform will make before applying them.
- terraform apply: Executes the plan to create/update infrastructure.
- terraform destroy: Deletes all resources managed by the configuration.
- terraform show: Displays the current state or a saved plan in readable form.
- terraform state list: Lists all resources tracked in the Terraform state.

## What the state file contains and why it matters

Ans: Statefile keeps records of all the resources running the moment and avoid duplication of resources upon recreation if they 
already exist.
