variable "db_instance_identifier" {
  description = "DB instance identifier"
  type = string
}

variable "db_name" {
  description = "Name of Data Base"
  type = string
}
variable "db_username" {
  description = "username of data base"
  type = string
}
variable "db_password" {
  description = "data base password"
  type = string
}
variable "db_instance_class" {
  description = "memory capacity of database instance"
  type = string
}
variable "db_engine" {
  description = "Name of database engine"
  type = string
}
variable "db_engine_version" {
  description = "database engine version"
  type = string
}
variable "allocated_storage" {
  description = "the amount of storage to allocate in gigabytes"
  type = number
}