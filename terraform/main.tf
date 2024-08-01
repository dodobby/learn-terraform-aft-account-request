# ACCOUNT REQUEST FOR cn-account1

module "cn-account1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alchdli.odd+cnaccount1@gmail.com"
    AccountName               = "cn-account1"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "alchdli.odd+cnaccount1@gmail.com"
    SSOUserFirstName          = "cn-account1"
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

  account_customizations_name = "cn-account1"
}

