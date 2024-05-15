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

# variable "public_subnet_cidr_tags" {
#   default = {}
# }
