locals {
    ami_id = "ami-0dcc1e21636832c5d"
    instance_type = var.instance_name[count.index] == "db" ? "t3.medium" : "t3.nano"
    record_name = var.instance_name[count.index] == "frontend" ? var.domine_name : "${var.instance_name[count.index]}.${var.domine_name}"
    record_value = var.instance_name[count.index] == "Frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
    
}
