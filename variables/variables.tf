variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "RHEL -9 "
}

variable "instance_type" {
    # default = "t3.micro"
}

variable "tags" {
    default = {
        project = "expense"
        Environment = "Dev"
        Module = "DB"
        name = "DB"

    }
}
variable "sg_name" {
    default = "allow_all"
}

variable "sg_discription" {
    default = "allowing everything potr  "
}

variable "allow_port" {
    type = number 
    default = 22 
}

variable "ssh_protocol" {
    default = "tcp"
}

variable "cidr_blockes_ingress" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        name ="allow_all"
        created_by = "kedarnath"
    }
}

variable "exgress_port" {
    type = number
    default = 0 
}