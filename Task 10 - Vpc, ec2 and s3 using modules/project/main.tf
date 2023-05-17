module "vpc" {
  source = "../module/vpc"

  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
  
}


module "ec2-in-public-subnet" {
  source = "../module/ec2"

  ami       = var.ami
  tags      = var.tags
  vol_tags  = var.vol_tags
  inst_type = var.inst_type
  cnt_inst  = var.count_of_insta_in_public_subnet

  security_groups = module.vpc.security_groups

  count     = length(var.public_subnet_cidrs)
  subnet_id = element(module.vpc.pub_subnets[*].id, count.index)
}


module "ec2-in-private-subnet" {
  source = "../module/ec2"

  ami       = var.ami
  tags      = var.tags
  vol_tags  = var.vol_tags
  inst_type = var.inst_type
  cnt_inst  = var.count_of_insta_in_private_subnet

  security_groups = module.vpc.security_groups

  count     = length(var.private_subnet_cidrs)
  subnet_id = element(module.vpc.prv_subnets[*].id, count.index)
}


module "s3" {
  source = "../module/s3"
  tags   = var.tags
}