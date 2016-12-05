variable "location" {}
variable "rgroup_name" {}
variable "stor_acct_name" {}
variable "stor_acct_type" { default = "Standard_LRS" }
variable "stor_cont_name" {}
variable "stor_cont_type" { default = "private" }

resource "azurerm_resource_group" "rgroup" {
  name     = "${var.rgroup_name}"
  location = "${var.location}"
}

resource "azurerm_storage_account" "sa" {
  name = "${var.stor_acct_name}"
  resource_group_name = "${var.rgroup_name}"
  location = "${var.location}"
  account_type = "${var.stor_acct_type}"
}

resource "azurerm_storage_container" "sc" {
  name = "${var.stor_cont_name}"
  resource_group_name = "${var.rgroup_name}"
  storage_account_name = "${var.stor_acct_name}"
  container_access_type = "${var.stor_cont_type}"
}

output "rgroup_id" { value = "${azurerm_resource_group.rgroup.id}" }
output "stor_cont_id" { value = "${azurerm_storage_container.sc.id}" }
output "stor_acct_id" { value = "${azurerm_storage_account.sa.id}" }
output "stor_acct_prim_blob_endpoint" { value = "${azure_storage_account.sa.primary_blob_endpoint}" }
