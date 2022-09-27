# resource "azurerm_windows_virtual_machine" "win2019" {
#   name                = "${var.prj}-${var.env}-${var.servername}-vm"
#   computer_name       = "${var.servername}"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   size                = "Standard_B2s"
#   admin_username      = var.username
#   admin_password      = var.password

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2019-Datacenter"
#     version   = "latest"
#   }

#   network_interface_ids = [
#     azurerm_network_interface.win2019.id,
#   ]
# }

# # NIC設定
# resource "azurerm_network_interface" "win2019" {
#   name                = "${var.prj}-${var.env}-win2019-vm-nic"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.business.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.win2019.id
#   }
# }

# # Public IP
# resource "azurerm_public_ip" "win2019" {
#   name                = "${var.prj}-${var.env}-win2019-vm-ip"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   allocation_method   = "Dynamic"

#   tags = {
#     project     = var.prj
#     environment = var.env
#   }
# }

# # 自動シャットダウン設定
# resource "azurerm_dev_test_global_vm_shutdown_schedule" "win2019" {
#   virtual_machine_id    = azurerm_windows_virtual_machine.win2019.id
#   location              = azurerm_resource_group.rg.location
#   enabled               = true
#   daily_recurrence_time = "0400"
#   timezone              = "Tokyo Standard Time"
#   notification_settings {
#     enabled = false
#   }
# }