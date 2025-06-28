variable "db_name" {}
variable "db_user" {}
variable "db_password" {}
variable "db_subnet_group_name" {}
variable "vpc_security_group_ids" {
  type = list(string)
}