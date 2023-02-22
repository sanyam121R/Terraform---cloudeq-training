
module "sm_ec2" {
  source = ".//ec2-module"
}

module "sm_s3" {
  source = ".//s3-module"
}