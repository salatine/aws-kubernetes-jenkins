variable "vpc_cidr" {
  type        = string
}

variable "public_subnets" {
  type        = list(string)
}

variable "instance_type" {
  type        = string
}
