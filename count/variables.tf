# variable prifarence 
# 1 . Command prompt 
# 2. terraform.tfvars  # will over ride the default vaules 
# 3. by using environment variable the export key word TF_VARS 
# 4 . default valus 


variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "RHEL -9 "
}

variable "instance_type" {
    default = "t3.micro"
}

variable "instance_name" {
    type = list
    default = [ "DB", "Frontend", "Backend" ]
}

variable "tags" {
    default = {
        project = "expense"
        Environment = "Dev"
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
