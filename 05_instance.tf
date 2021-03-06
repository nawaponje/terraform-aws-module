#module "ec2_cluster" {
#  source                 = "terraform-aws-modules/ec2-instance/aws"
#  version                = "~> 2.0"
#
#  name                   = "web"
#  instance_count         = 3
#
#  ami                    = var.ubuntu20
#  instance_type          = "t2.micro"
#  key_name               = "nawapon-aws-key"
#  monitoring             = true
#  vpc_security_group_ids = [module.web_server_sg.security_group_id]
#  subnet_ids              = var.private_subnet
#
#  tags = {
#    Terraform   = "true"
#    Environment = "dev"
#  }
#}