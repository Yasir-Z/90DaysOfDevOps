# Before touching the terminal, research and write short notes on:

- What is Infrastructure as Code (IaC)? Why does it matter in DevOps?

  Note: Infrastructure as Code is a concept or practice which enables provisioning of infrastructre with writing codes in the files
        rather then clicking hundard and thousand times on GUI consoles to create resources.
  
- What problems does IaC solve compared to manually creating resources in the AWS console?
  Note: It solves multiple problems such as:
        -  Speed and efficiency: Infrastructre can be up and down with single command and a file of code which is faster than manual clicks on console.
        - Accuracy: Manual clicks are more prone to errors and mistakes which can casues infrastructure desteblization while IaC is less pron to this where
                    there is validate and plan berfore apply.
        - Visibilty and Understading: To understand infrastructre from GUI we need to navigate heavily accorss the plateform while with IaC there is a state file
                    which contains all records of resources where from it's easy to understand.
        - Scalling: Scalling with IaC is much easier than manual clicks on GUI. Let say we need to create 10 servers and to do this we just add one line of code
                    and done terraform will create 10 servers while manually creating 10 servers is a headache.
        - Recovery and Rolling Back: With terraform recovery and roling back is easy, simple and quick while with while with GUI its time consuming and prone to
                    errors.
How is Terraform different from AWS CloudFormation, Ansible, and Pulumi?

Note: Terraform is uses declarative approach of IaC by HCL and can work with multiple cloud plateforms.

What does it mean that Terraform is "declarative" and "cloud-agnostic"?

Note: It means we just declare which resources with attributes to be created terraform creates it with asking how to do that and cloud-agnostic mean multi cloud 
      compatibility, it can work with multiple cloud plateforms.

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
- terraform state list: Lists all resources tracked in the Terraform statefile.

## What the state file contains and why it matters

Ans: Statefile keeps records of all the resources running the moment and avoid duplication of resources upon recreation if they 
already exist.
