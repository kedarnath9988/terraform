resource "aws_instance" "DB" {

  ami                     = var.ami_id
  instance_type           = var.instance_type

   tags = {
    Name = "DB"
  }

}
resource "aws_instance" "frountend" {
  ami                     = var.ami_id
  instance_type           = var.instance_type

  tags = {
    Name = "frountend"
  }

}

resource "aws_instance" "backend" {
  ami                     = var.ami_id
  instance_type           = var.instance_type

  tags = {
    Name = "backend"
  }
}
