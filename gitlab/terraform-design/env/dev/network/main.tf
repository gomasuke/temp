module "network" {
  source = "git::https://gitlab.expo.cncg.io/CloudNative-AP/terraform-module-design//modules/network?ref=0.0.11"

  vpc_cidr              = var.vpc_cidr
  vpc_name              = var.vpc_name
  internet_gateway_name = var.internet_gateway_name
  public_subnets        = var.public_subnets
  private_subnets       = var.private_subnets

}
