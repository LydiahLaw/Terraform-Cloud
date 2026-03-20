variable "ami_bastion" {
  type        = string
  description = "AMI ID for bastion host"
}

variable "ami_nginx" {
  type        = string
  description = "AMI ID for nginx server"
}

variable "ami_wordpress" {
  type        = string
  description = "AMI ID for wordpress server"
}

variable "ami_tooling" {
  type        = string
  description = "AMI ID for tooling server"
}

variable "keypair" {
  type = string
}

variable "bastion_sg" {
  type = string
}

variable "nginx_sg" {
  type = string
}

variable "webserver_sg" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "nginx_alb_tgt" {
  type = string
}

variable "wordpress_alb_tgt" {
  type = string
}

variable "tooling_alb_tgt" {
  type = string
}

variable "instance_profile" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "availability_zones" {
  type = list(string)
}