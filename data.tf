/*

Data sources allow Terraform to use information defined outside of Terraform, defined by another separate Terraform configuration, or modified by functions.

I personally use data sources within modules sparingly, whilst they are incredibly powerful, I usually side where possible on using the consumer of the module for the inputs to a module. There are exemptions to this rule as an example, a common practice within the Azure Module space is to use the below data source:

`data "azurerm_client_config" "current" {}`

This provides a large amount of information such as:

- client_id
- tenant_id
- subscription_id
- object_id

In some cases these pieces of information are required to deploy a resource, such as an Azure Key Vault, and asking the consumer to provide the tenant_id isn't as simple as calling the aforementioned data source which has no inputs required.

If the data.tf file is unused, it should be deleted from the module.

*/
