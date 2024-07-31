terraform {
  backend "azurerm" {
    resource_group_name  = "rg-techboost-mgmt"
    storage_account_name = "sttechboostado01"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnets             = var.subnets
}

module "resource_group_2" {
  source   = "./modules/resource_group"
  name     = "rg-techboost-lab-eus2-02"
  location = var.location
}

module "vnet_2" {
  source              = "./modules/network"
  resource_group_name = module.resource_group_2.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name_2
  address_space       = var.address_space_2
  subnets             = var.subnets_2
}
