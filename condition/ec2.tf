resource "aws_instance" "db" {
    
    ami  = var.ami_id
    instance_type = var.instance_name == "DB" ? "t3.small" : "t3.nano"
    count = length(var.instance_name)
  
}