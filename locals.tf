/*

The locals.tf file is used to store all of the declarations of local values.

Local values within Terraform are declared through the use of one or many locals blocks.

Simple Example:

locals {
  service_name = "forum"
  owner        = "Community Team"
}

A local value assigns a name to an expression, so you can use it multiple times within a module without repeating it.

The benefit of separating this into a specific file means that your ability to find and alter these values is made easier than digging through 1000 lines files throughout the rest of the module.

Whilst local values are powerful it should be carefully considered as to the use of these within a module. Traditionally within a module, local values are used as a way to translate variables from the user or to reconfigure outputs of other modules into a more usable format for this modules specific use case.

If the locals.tf file is unused, it should be deleted from the module.

*/
