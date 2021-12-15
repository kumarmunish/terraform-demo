# AWS variables
variable "ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


# Azure variables

variable "rg_name" {
  type = string
}

variable "location" {
  type    = string
  default = "westus2"
}