resource "aws_instance" "Hello" {
  ami                     = local.ami_id
  vpc_security_group_ids  = [ local.sg_id ]
   instance_type           =
}