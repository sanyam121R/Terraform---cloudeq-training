output "vpc_id" {
  value = module.vpc.vpc_id
}

output "security_groups" {
  value = module.vpc.security_groups
}

output "pub_subnets" {
  value = module.vpc.pub_subnets
}

output "prv_subnets" {
  value = module.vpc.prv_subnets
}