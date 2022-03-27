/*

The main.tf is named because of traditionally the main configuration of resources would live within this file. However, it is also common place that in larger modules or codebases with large amounts of resources and modules that those are split out into their own files, to enable easier navigation.

So for simple modules or deployments keep everything within a single main.tf file.

But as you become more comfortable and take on more complex projects / deployments start to logically separate out the contents of the main.tf into other files, that are named after the resource or module.

A main.tf or any_resource.tf should only contain modules or resources within the file, if local or data blocks are used they should be stored in their respective files.

*/
