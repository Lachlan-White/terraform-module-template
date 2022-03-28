/*

Firstly, Variables are one of the most important elements in making a high-quality module, and enabling the benefits of reusability and abstraction.

Every variable should contain the following elements (if required), in this order:

- description
- type
- default
- sensitive
- validation

I have a full blog post on what my thoughts on the standards of variables file should be and some practices that are important which can be found:

<https://lachlanwhite.com/posts/terraform/10-11-2021-terraform-variables-a-standard/>

But below are some examples of what good variables look like.

Description Examples:

variable "resource_group_name" {
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "virtual_machine_size" {
  description = "(Optional) The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = "Standard_D4s_v3"
}

Multi-Line Description Example:

variable "azure_devops_configuration" {
  description = <<EOF
    (Optional) A azure_devops_configuration block as defined below.

    (Required) account_name - Specifies the Azure DevOps account name.
    (Required) branch_name - Specifies the collaboration branch of the repository to get code from.
    (Required) project_name - Specifies the name of the Azure DevOps project.
    (Required) repository_name - Specifies the name of the git repository.
    (Required) root_folder - Specifies the root folder within the repository. Set to / for the top level.
    (Required) tenant_id - Specifies the Tenant ID associated with the Azure DevOps account.
  EOF

  type = object({
    account_name    = string
    branch_name     = string
    project_name    = string
    repository_name = string
    root_folder     = string
    tenant_id       = string
  })

  default = null
}

Default Value Examples

variable "location" {
  description = "(Optional) The Azure location where the Linux Virtual Machine should exist. Defaults to 'australiasoutheast'. Changing this forces a new resource to be created."
  type        = string
  default     = "australiasoutheast"
}

variable "source_image_reference" {
  description = <<EOF
    (Optional) A source_image_reference block as defined below. Changing this forces a new resource to be created.

    (Required) publisher - Specifies the publisher of the image used to create the virtual machine.
    (Required) offer - Specifies the offer of the image used to create the virtual machine.
    (Required) sku - Specifies the SKU of the image used to create the virtual machine.
    (Required) version - Specifies the version of the image used to create the virtual machine. Set to 'latest' if unsure.
  EOF

  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })

  default = {
    publisher = "microsoftwindowsserver"
    offer     = "windowsserver"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
}

Variable Validation Example:

variable "resource_group_name" {
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string

  validation {
    condition     = length(var.resource_group_name) < 90
    error_message = "The resource_group_name must be less than 90 characters."
  }
}

*/
