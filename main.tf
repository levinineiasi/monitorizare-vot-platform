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

variable "sql_sa_login" {
  type = "string"
}

variable "sql_sa_password" {
  type = "string"
}

resource "azurerm_sql_server" "voting_irregularities_sql_server" {
  name                         = "${var.root_name}-sql"
  resource_group_name          = "${azurerm_resource_group.voting_irregularities_rg.name}"
  location                     = "${azurerm_resource_group.voting_irregularities_rg.location}"
  version                      = "12.0"
  administrator_login          = "${var.sql_sa_login}"
  administrator_login_password = "${var.sql_sa_password}"
}

resource "azurerm_app_service_plan" "voting_irregularities_api_app_service_plan" {
  name                = "${var.root_name}-api-sp"
  location            = "${azurerm_resource_group.voting_irregularities_rg.location}"
  resource_group_name = "${azurerm_resource_group.voting_irregularities_rg.name}"
  kind                = "Linux"

  sku {
    tier = "Standard"
    size = "S1"
  }

  properties {
    reserved = true
  }
}
