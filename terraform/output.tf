output "vm_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}
output "miab_admin" {
  value = "me@box.${var.domain}"
}
output "miab_pswd" {
  value = "123456789 (Change password immediately)"
}
output "miab_dash" {
  value = join("",["https://box.",var.domain,"/admin or https://",azurerm_public_ip.public_ip.ip_address,"/admin"])
}
output "miab_mail" {
  value = join("",["https://box.",var.domain,"/mail or https://",azurerm_public_ip.public_ip.ip_address,"/mail"])
}