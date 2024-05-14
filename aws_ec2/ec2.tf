resource "aws_instance" "db1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_security_group_ids=[aws_security_group.allow_ssh2.id]
  vpc_security_group_ids = var.sg_id

  tags = var.tags
}

resource "aws_security_group" "allow_ssh2" {
  name        = "allow_ssh2"
  description = "Allow SSH2 inbound traffic and all outbound traffic"
 

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_ssh2"

  }
}