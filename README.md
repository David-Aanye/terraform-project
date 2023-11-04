# terraform-project

Per the requirements, the project include;

A provisioned vpc(vpc.tf), two public and two private subnets(vpc_subnets.tf)

Vpc security group(vpc_security_group.tf)

Other terraform files in the configuration include;
ec2.tf(user_data attached), script.sh containing user_data(nginx web server), variable.tf, store.tf, main.tf, output.tf, provider.tf, internet_gateway.tf, elastic_ip.tf, nat_gateway.tf, elastic load balancer (elb_security_group.tf), public and private route tables and associations

The main.tf file contains the following resources; application load balancer, load balancer target group(including health check), target group attachment and load balancer listener on port 80/HTTP.

I then run terraform commands; terraform init, terraform validate, terraform fmt, terraform plan and terraform apply to provision the various resources listed above.

NB: However, my load balancer dns name produced an error: "502 bad gateway" 
I tried to troubleshoot the error with resources from the internet but has been unsussecful so far. I hope to get some assistance from the team in troublshooting the error. 