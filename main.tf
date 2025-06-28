module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source = "./modules/s3"
}

module "rds" {
  source = "./modules/rds"
  vpc_security_group_ids = [module.vpc.db_sg_id]
  db_subnet_group_name   = module.vpc.db_subnet_group
  db_name = var.db_name
  db_password = var.db_password
  db_user = var.db_user
}

module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  s3_bucket = module.s3.bucket_name
  db_endpoint = module.rds.db_endpoint

}