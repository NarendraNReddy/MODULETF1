module "ec2_test1" {
    source = "../aws_ec2"
    ami_id = "ami-090252cbe067a9e58"
    instance_type = "t3.small"
    tags = {}
    sg_id=["sg-0578e152d16c0b6a4"]  
}