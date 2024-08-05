# ACCOUNT REQUEST FOR cn-account6

module "cn-account6" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alchdli.odd+cnaccount6@gmail.com"
    AccountName               = "cn-account6"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "alchdli.odd+cnaccount6@gmail.com"
    SSOUserFirstName          = "cn-account6"
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

  account_customizations_name = "cn-account6"
}

