variable "sg_name" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_tags" {
  type    = map(string)
  default = {}
}
