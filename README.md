# monitorizare-vot-platform

Creates the required cloud components for running the application.

## Pre-requisites

  * [Azure](https://azure.microsoft.com/) account
  * [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
  * [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html#installing-terraform)

## Up & running

  1. [Set up `az` to access Azure](https://docs.microsoft.com/en-gb/azure/virtual-machines/linux/terraform-install-configure#set-up-terraform-access-to-azure).
  1. Update values in `terraform.tfvars` (names, accounts, etc).
  1. Run [`terraform plan`](https://www.terraform.io/docs/commands/plan.html) to create the *execution plan*.
  1. Run [`terraform apply`](https://www.terraform.io/docs/commands/apply.html) to create the *resources* on Azure.
