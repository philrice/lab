#############################
# Static Web Site Variables #
#############################
variable "static-web-site-resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-static-web-site"
}

# Static Web Sites are only available in certain regions. The following regions are supported:
# West Europe, East US 2, Central US, West US 2, East Asia
variable "static-web-site-location" {
  description = "The Azure region to deploy  resource group & static web app"
  type        = string
  validation {
    condition     = contains(["West Europe", "East US 2", "Central US", "West US 2", "East Asia"], var.static-web-site-location)
    error_message = "The location must be one of the following: West Europe, East US 2, Central US, West US 2, East Asia"
  }
  default     = "West Europe"
  
}

resource "random_string" "static_web_site_name_suffix" {
  length           = 8
  special          = false
  upper            = false
  numeric          = false
}



variable "static-web-site-name" {
  description = "The name of the static web app"
  type        = string
  default     = "static-web-site"
  validation {
    condition     = length(var.static-web-site-name) <= 60 && length(var.static-web-site-name) >= 3
    error_message = "The name of the static web app must be between 3 and 60 characters long"
  }
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]+$", var.static-web-site-name))
    error_message = "The name of the static web app must only contain alphanumeric characters and hyphens"
  }
  validation {
    condition     = !can(regex("^[-]|[-]$", var.static-web-site-name))
    error_message = "The name of the static web app cannot start or end with a hyphen"
  }
}

