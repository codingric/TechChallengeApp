variable "app_name" {
  type    = string
  default = "servian-test"
}

variable "tags" {
  default = {
    "environment" = "test",
    "owner"       = "Ricardo Salinas",
    "contact"     = "ricardo@salinas.id.au"
  }
}

variable "app_port" {
  default = 3000
}

variable "whitelisted_cidr" {
  default = "0.0.0.0/0"
}

variable "image_repository" {
  default = "codingric/servian"
}

variable "db_user" {
  default = "servian"
}

variable "db_password" {
  default = "servian"
}

variable "db_name" {
  default = "servian"
}
