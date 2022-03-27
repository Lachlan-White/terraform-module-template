# Examples Folder

## Overview

The purpose of the examples folder is to create a repeatable and sustainable model of enablement for each and every module that you create.

It enables a more complete example that what is typically provided to the consumer in the root README of the module itself.

It can and should also be used in conjunction with a GitHub Action or a Pipeline to validate changes to the module and even can be used as checks and balancer before and automated release.

## Basic Example

The basic example should deploy all the required prerequisite resources / modules in order to deploy the module in the desired way. But should use only the required inputs to the module in order to keep it as simple as an example as possible.

## Complex Example

The complex example should again use all the required prerequisite resources / modules in order to deploy itself. However, this example should use all possible variables available to provide examples and context on how to consume the most advanced version of this module. You may find that your complex example sometimes has more resource / module prerequisites than the basic example.

## End Goal

The end goal of these examples is to ensure that the consumer can find the help they need within your module, and they can easily consume the module, even if thats simply via copy and paste.
