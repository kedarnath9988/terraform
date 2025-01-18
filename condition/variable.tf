variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "RHEL -9 "
}

variable "instance_name" {
    type = list(string)
    default = [ "DB","Frountend","backend" ]
}

