resource "aws_instance" "db" {
    ami  = var.ami_id
    #instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = var.tags
}
resource "aws_security_group" "allow_all" {
     name        = var.sg_name
     description = var.sg_discription
    # allwing everything 
    egress {
    from_port   = var.exgress_port
    to_port     = var.exgress_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blockes_ingress
  }
    # allowing the TCP protocol with port 22 
    ingress {
    from_port   =  var.allow_port
    to_port     =  var.allow_port
    protocol    =  var.ssh_protocol
    cidr_blocks =  var.cidr_blockes_ingress
  }
    tags = var.sg_tags
}
