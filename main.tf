provider "azurerm" { }

variable "root_name" {
  type = "string"
}

variable "location" {
  type = "string"
}

resource "azurerm_resource_group" "voting_irregularities_rg" {
  name     = "${var.root_name}-rg"
  location = "${var.location}"
}
