variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Magento 2 Fastly"
}
variable "ami" {
  description = "The AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0c2af51e265bd5e0e"  # ubuntu 22
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "c5.large"
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = "cuang"
}

variable "security_group_id" {
  description = "public 443 80, my ip port 22"
  type        = string
  default     = "sg-0fd0ab6de41889d54"
}

variable "elastic_ip" {
  description = "Elastic IP to assign to the EC2 instance"
  type        = string
  default     = "3.108.211.211"
}
