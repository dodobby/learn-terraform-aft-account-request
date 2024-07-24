module "hjdo-aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "alchdliodd.newaft@gmail.com"
    AccountName               = "hjdo-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "alchdliodd.newaft@gmail.com"
    SSOUserFirstName          = "hjdo-aft"
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

  account_customizations_name = "hjdo-aft"
}
