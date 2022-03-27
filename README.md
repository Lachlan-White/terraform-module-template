# Terraform Module Template

## Overview

This repository is a template that can be used as a standard for terraform module creations for any provider or platform.

The goal of this template is to establish some best practices in terms of structure and guidance on how to structure, assemble and some guidance on when to use a module.

## What is a Module?

A module is a container for multiple resources that are used together. Modules can be used to create lightweight abstractions, so that you can describe your infrastructure in terms of its architecture, rather than directly in terms of physical objects.

## When to use a Module

- One or more resources are used in direct conjunction with each other
  - _Such as NICs and Disks added to a Virtual Machine Resource to simplify consumption_

- One or mode modules are used in direct conjunction with each other, to form a standard pattern or architecture

- Opinionated configuration adds additional value, in which repetition would otherwise ensue
  - _Such as Complex Validations, Security Configurations etc_

## When not to use a module

- To create a simple wrapper around a resource, that adds no additional value:
  - _Such as an Azure load Balancer, where the configuration is always different_

- The modules' purpose is solely to be consumed by another high-level module

## File Specific Guidance

Within every file is some guidance on the purpose of these files, and when to use them.
