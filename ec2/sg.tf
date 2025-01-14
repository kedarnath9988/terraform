resource "aws_security_group" "allow_all" {
     name        = "allow_all"
     description = "allowing everything"
    vpc_id      = "${aws_vpc.main.id}"

    # allwing everything 
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

    # allowing the TCP protocol with port 22 
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


    tags = {
    Name = "allow_all"
    created_by ="kedarnath"
  }
  
}