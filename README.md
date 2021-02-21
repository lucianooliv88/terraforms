# terraforms

Those Terraforms will deploy webserver from especific AMI ID as string and it will be added into Open SG to 0.0.0.0/0 port 80.

From this idea we can improve those scripts which I have locally to build up
- Entire VPC - 3 public subnets - 3 private subnets - 3 DBs subnets - 3 DMZ
- Internet Gateway - 3 Nat Gateway for each AZ
- IPsec VPN to on Premises 
- Others necessary Service, for example, such as EFS, DNS route53, LBs, Target groups, Auto-scalings, Lambdas, IAMs (roles&policies), SNS, WAF, following the necessity of the envirionment
- Adding CloudWatch logs and Dashboard to the resources
- Controller instance with Ansible to OS level installations (System Manager Automatation / Run Command) to perform simple scripts to the envirionment.

