variable "allocated_storage" {
  type = number
  default = 10
}

variable "db_name" {
  default = "tfmydb"
  type = string
}

variable "db_engine" {
  default = "postgres"
  type = string
}

variable "db_version" {
  type = string
  default = "15.2"
}

variable "db_subnet_group_name"{
  default = "sngname"
  type = string
}

variable "db_instance_class" {
  default = "db.t3.micro"
  type = string
}
variable "skip_final_snapshot" {
  default = true
  type = bool
}

variable "db_username" {
  sensitive = true
  type = string
}

variable "db_password" {
  sensitive = true
  type = string
}