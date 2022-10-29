![](asg_elb_vpc.png)
# IAAC 
## Description
- In this repo I have three folders , each deploys autoscaling group and application load balancer in a custom vpc , in us-east-1 region.
- Each folder has its own backend file and uses data source to refrence to the existing resources.

## Usage
- deploys ec2 instances fronted by an ALB scaled by and ASG in a custom vpc.

## how to use?
- have aws account
- have git locally installed
- have terraform and AWS credential configured inside the terraform server
- after cloning the repo you can run these commands in each folder to deploy the vpc, asg and elb.
```
git clone https://github.com/Saintmori/terraform-web.git
cd terraform-web
cd vpc_v3
terraform init
terraform plan
terraform apply
```
```
cd alb_v1
terraform init
terraform plan
terraform apply
```
```
cd asg_v3.0
terraform init
terraform plan
terraform apply
```
## contributors:
@saintmori
## License: