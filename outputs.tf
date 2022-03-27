/*

Output values make information about your infrastructure available on the command line, and can expose information for other Terraform configurations to use. Output values are similar to return values in programming languages.

The use of the outputs file is incredibly important, as we know, Terraform module are often used in conjunction with one another to create composite modules or holistic platforms hosting applications. The ability to interop between modules and pass information from one source to another is key.

The outputs.tf file contains the declaration of all of the values that will be callable as an output of this module.

Simple Output Example:

output "instance_ip_addr" {
  value       = azurerm_windows_virtual_machine.vm1.public_ip_address
  description = "The public IP address of the vm1  windows server resource."
}

It is also important to note that sometimes you may want to hide sensitive information from being displayed as a result of a Terraform Plan or Apply. This can be done buy using the sensitive flag

Sensitive Output Example:

output "db_password" {
  value       = aws_db_instance.db.password
  description = "The password for logging in to the database."
  sensitive   = true
}

More information on Outputs can be found: <https://www.terraform.io/language/values/outputs>

*/
