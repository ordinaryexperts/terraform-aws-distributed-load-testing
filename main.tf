resource "aws_cloudformation_stack" "distributed_load_testing" {
  capabilities = ["CAPABILITY_IAM"]
  name = "${var.env}-distributed-load-testing-stack"
  on_failure = "DELETE"
  parameters = {
    AdminName = var.admin_name
    AdminEmail = var.admin_email
    VpcCidrBlock = var.vpc_cidr_block
    SubnetACidrBlock = var.subnet_a_cidr_block
    SubnetBCidrBlock = var.subnet_b_cidr_block
    EgressCidr = var.egress_cidr
  }
  template_body = "${file("${path.module}/distributed-load-testing-on-aws.template")}"
}
