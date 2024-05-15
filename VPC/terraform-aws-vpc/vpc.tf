resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
        Name= local.resource_name
    }

  )
  
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id #AUto association with vpc 

  tags = merge(
    var.common_tags,
    var.igw_tags,
    {
        Name= local.resource_name #resource name expense-dev
    }
  )
  
}

#public subnet
resource "aws_subnet" "public" {
  count=  length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  #cidr_block = "10.0.1.0/24"
  cidr_block = var.public_subnet_cidrs[count.index]

  tags = merge(
    var.common_tags,
    var.public_subnet_cidr_tags,
    {
        Name=local.resource_name #expense-public-us-east-1a
                                 # expense-public-us-east-1b
    }
  )
}