variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "RHEL -9 "
}

variable "instance_type" {
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "expense"
        Environment = "Dev"
        Module = "DB"
        name = "DB"

    }
}