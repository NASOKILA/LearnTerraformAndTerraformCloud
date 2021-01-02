variable "admin_username" {
  type        = string
  description = "VM Username"
}

variable "admin_password" {
  type        = string
  description = "VM Password"
}

variable "location" {}

variable "prefix" {
  type    = string
  default = "my"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  type = map

  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}