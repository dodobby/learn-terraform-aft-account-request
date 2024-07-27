# ACCOUNT REQUEST FOR account1

module "account1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alchdli.odd+account1@gmail.com"
    AccountName               = "account1"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "alchdli.odd+account1@gmail.com"
    SSOUserFirstName          = "account1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "account1"
}


# ACCOUNT REQUEST FOR account2

module "account2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alchdli.odd+account1@gmail.com"
    AccountName               = "account2"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "alchdli.odd+account1@gmail.com"
    SSOUserFirstName          = "account2"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "account2"
}

