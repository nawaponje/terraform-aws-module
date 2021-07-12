##### region & zone ####
variable "aws_region_zone" {
    default = "ap-southeast-1"
}

variable "availability_zones" {
    #default = ["ap-southeast-1a","ap-southeast-1b","ap-southeast-1c"]
    default = ["ap-southeast-1a"] 
}


##### VPC Network cidr #####
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnet" {
    #default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
     default = ["10.0.1.0/24"]
}

variable "private_subnet" {
    #default = ["10.0.11.0/24","10.0.22.0/24","10.0.33.0/24"]
    default = ["10.0.11.0/24"]
}

