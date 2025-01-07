# module "sandbox" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "alchdli.odd+lgu@gmail.com"
#     AccountName               = "qpie-aft-lgu"
#     ManagedOrganizationalUnit = "Sandbox"
#     SSOUserEmail              = "alchdli.odd+lgu@gmail.com"
#     SSOUserFirstName          = "Sandbox"
#     SSOUserLastName           = "AFT"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "HashiCorp Learn"
#     change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "sandbox"
# }

locals {
  config = yamldecode(file("./sandbox_config.yaml"))
}

module "sandbox" {
  for_each = { for account in local.config.accounts : account.AccountName => account }
  source   = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = each.value.control_tower_parameters.AccountEmail
    AccountName               = each.value.control_tower_parameters.AccountName
    ManagedOrganizationalUnit = each.value.control_tower_parameters.ManagedOrganizationalUnit
    SSOUserEmail              = each.value.control_tower_parameters.SSOUserEmail
    SSOUserFirstName          = each.value.control_tower_parameters.SSOUserFirstName
    SSOUserLastName           = each.value.control_tower_parameters.SSOUserLastName
  }

  account_tags = each.value.account_tags

  change_management_parameters = {
    change_requested_by = each.value.change_management_parameters.change_requested_by
    change_reason       = each.value.change_management_parameters.change_reason
  }

  custom_fields = each.value.custom_fields

  account_customizations_name = each.value.account_customizations_name
}
