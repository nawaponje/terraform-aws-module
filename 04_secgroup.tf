module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "web-server"
  description = "Web-http"
  vpc_id      = module.vpc.vpc_id
  
  
  ####-- sec rule for outgoing Internet --####
  egress_rules        = ["all-all"]
  egress_cidr_blocks  = ["0.0.0.0/0"]

  ####-- sec rule for Incoming to web-server --####
  ingress_rules       = ["http-80-tcp","all-icmp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
}
