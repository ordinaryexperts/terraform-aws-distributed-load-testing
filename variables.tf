variable "admin_name" {
  description = "Then admin user name to access the Distributed Load Testing Console"
}

variable "admin_email" {
  description = "Admin user email address to access the Distributed Load Testing Console"
}

variable "env" {
  description = "Environment name for deployment, i.e. 'dev', 'qa', 'prod'"
  default = "dev"
}

variable "vpc_cidr_block" {
  description = "CIDR block of the new VPC where AWS Fargate will be placed"
  default = "192.168.0.0/16"
}

variable "subnet_a_cidr_block" {
  description = "CIDR block for subnet A of the AWS Fargate VPC"
  default = "192.168.0.0/20"
}

variable "subnet_b_cidr_block" {
  description = "CIDR block for subnet B of the AWS Fargate VPC"
  default = "192.168.16.0/20"
}

variable "egress_cidr" {
  description = "The Cidir Block to restrict the ECS container outbound access"
  default = "0.0.0.0/0"
}
