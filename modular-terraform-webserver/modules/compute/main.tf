resource "azurerm_linux_virtual_machine" "vm" {
  name                = "tf-webserver"
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = "Standard_D2s_v3"
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_password
  disable_password_authentication = false

  network_interface_ids = [
    var.nic_id
  ]

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    name                 = "tf-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  custom_data = filebase64(var.cloud_init_path)
}