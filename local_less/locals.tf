locals {
  ami_id = "ami-09c813fb71547fc4f"
  sg_id = "sg-06787c68700300c96"
   instance_type = var.instance_name == "db" ? "t3.medium" : "t3.micro"
 #  instance_type = "t3.small"
}
