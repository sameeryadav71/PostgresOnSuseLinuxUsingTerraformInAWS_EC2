# PostgresOnSuseLinuxUsingTerraformInAWS_EC2

* Replace "access_key" and "secret_key" with your IAM user "access_key" and "secret_key".

* Here we are using suseLinux for postgres database, we can change to any other operating 
  system just by changing "ami" present in terraform script,but then we have to 
  look for different commands for installing postgres.

* We have created security group for inbound and outbound access of postgres database.

* Inbound rule(ingress) and outbound rule(egress) are used for accessing ec2 instance using specific port range.

* CIDR block is used to decide the port range which can access the instance.

* Replace the "key_name" value with your keypair name which is used for accessing ec2 instance using PUTTY software.

# For Running terraform script use the commands below:
1.terraform init

2.terraform fmt

3.terraform validate

4.terraform plan

5.terraform apply
