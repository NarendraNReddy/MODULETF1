#project variables 
variable "project_name" {
    type=string  
    
}
#These should supply from test

variable "environment" {
    type = string 
    default = "dev"  
}

variable "common_tags" {
  type = map
  

}
#These should supply from test



## VPC 
# cidr_block       = "10.0.0.0/16"
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"

}
#  enable_dns_hostnames = true

variable "enable_dns_hostnames" {
    type=bool
    default = true 
  
}

#vpc common tags 
variable "vpc_tags" {
    type = map 
    default = {}
  
}

#igw

variable "igw_tags" {
    type = map 
    default = {}  
}


# SUBNET
#public subnet variables #cidrs -plural
variable "public_subnet_cidrs" {
    type=list 
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
  default = {}
}


