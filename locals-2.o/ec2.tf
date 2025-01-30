resource "aws_instance" "expense" {
  count = length(var.instance_name)
  ami                     = local.ami_id
  instance_type           = var.instance_name[count.index] == "db" ? "t3.medium" : "t3.nano"
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

  tags = merge(
    var.comman_tages, {
      name = var.instance_name[count.index]
      module = var.instance_name[count.index]
    }
  )
}
resource "aws_security_group" "allow_all" {
  name        = "allow_all"
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
}