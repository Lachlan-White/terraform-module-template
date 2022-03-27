# notes

/*

The versions.tf file is where I declare all of the required versions of providers for this module. Whilst provider configurations are shared between modules, every module must declare it's own provider requirements.

This is done so that Terraform can ensure that there is a single version of the provider that meets the compatibility requirements of all modules within a configuration.

Example:

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

*/
