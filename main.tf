resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Demo-Instance"
  }
}


resource "azurerm_storage_account" "example" {
  name                     = "storageccountname"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "demo"
  }
}