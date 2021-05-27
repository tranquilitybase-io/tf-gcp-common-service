variable "num_password_create" {
  type = number
  default = 0
  description = "Defines how many passwords to create"
}

variable "create_password" {
  description = "Defines whether to create password"
  type = bool
  default = true
}

variable "password_length" {
  type = number
  default = 24
  description = "Length of password"
}

variable "secret_name" {
  type = list
  description = ""
  default = []
}

variable "replication_region" {
  description = ""
  type = string
  default = "europe-west1"
}

variable "project_id" {
  description = ""
  type = string
  default = ""
}
