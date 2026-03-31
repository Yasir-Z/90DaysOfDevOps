### Your full main.tf with comments explaining each resource

- main.tf uploaded

## Screenshot of terraform apply output


## Screenshot of the VPC and its resources in the AWS console

- VPC and subnet
<img width="1597" height="734" alt="image" src="https://github.com/user-attachments/assets/ea955d01-c025-4f8f-8c6d-74b3df7ebb5c" />

- VPC and Cidr block

<img width="1612" height="724" alt="image" src="https://github.com/user-attachments/assets/c3c81e8b-aba1-48b7-80a1-655c47af906b" />


## The dependency graph (image or text)

<img width="1741" height="496" alt="graphviz" src="https://github.com/user-attachments/assets/23faac25-3547-4e13-8228-329d2f9fedcb" />

## Explanation of implicit vs explicit dependencies in your own words

- implicit: in case of implicit dependencies terraform automatically figures out order of resource to create them. such as which to create first, then second and goes on.
-  explicit dependencies: These dependencies are manually provided to terraform and terraform is bond to follow the order to of resources to create them.
