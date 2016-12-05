Azure Network Terraform Module
===========

A terraform module to provide a network in Microsoft Azure.


Module Input Variables
----------------------

- `location` - azure location
- `rgroup_name` - resource group name
- `stor_acct_name` - storage account name
- `stor_acct_type` - storage account type (defaults to Standard_LRS)
- `stor_cont_name` - storage container name
- `stor_cont_type` - storage container type (defaults to private)

Usage
-----

```hcl
module "acct" {
  source = "github.com/marsupermammal/tfmod-azure-acct"
  location = "eastus"
  rgroup_name = "my_resource_group"
  stor_acct_name = "my_storage_account"
  stor_cont_name = "my_storage_container"
}
```

Outputs
-----

 - `rgroup_id` - resource group id
 - `stor_cont_id` - storage container id
 - `stor_acct_id` - storage account id

Author
=======

Originally created and maintained by [Phil Watts](https://github.com/)

License
=======

Apache 2 Licensed. See LICENSE for full details.
