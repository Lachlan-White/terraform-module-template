/*

The purpose of this outputs.tf file is to validate the expected outputs of the module itself.

Similarly to what exists within your outputs.tf at the root directory of the module, however, we now need to ensure that our output is coming from the module itself not the resources within the module.

Example:

output "virtual_machine_public_ip_address" {
  value       = module.example_module.virtual_machine_public_ip_address
  description = "The public IP address of the vm1 windows server resource."
}

*/
