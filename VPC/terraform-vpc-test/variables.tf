variable "project_name" {
    default = "expense"
  
}

variable "common_tags" {
  default = {
    Project="expense"
    Environment="dev"
    terraform=true
  } 

}


# #subnet

variable "public_subnet_cidr_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24","10.0.11.0/24"]
}