resource "aws_instance" "DB" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids  = vpc_security_group_ids.allow_ssh.id
  tags = {
    Name = "db"
    project = 
    Module = 

  }
}

resource "aws_security_group" "allow_ssh" {
     nmae = "allow_ssh"
     description = "Allow TLS inbound traffic and all outbound traffic"

     tags = {
        Name = "allow_ssh"
        created_by = "kedarnath"
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }     

    egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


}