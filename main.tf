module "networking" {
  source = "./networking"
}

module "ec2" {
  source            = "./ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.networking.ec2_sg_id
  key_name          = var.key_name
}