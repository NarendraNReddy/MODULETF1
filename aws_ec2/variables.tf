variable "ami_id" {
    default = "ami-090252cbe067a9e59"  
}

variable "instance_type" {
    default = "t3.micro"  
}

variable "tags" {
    type = map 
   default = {}
  
}

variable "sg_id" {
    type=list
    default = ["sg-0578e152d16c0b6a5"]
  
}