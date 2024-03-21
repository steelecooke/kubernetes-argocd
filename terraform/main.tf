module "secrets" {
  source = "./modules/secrets"

  name = "${var.project}-${var.env}"
  project = var.project

  password_length = 20
  include_special = true
}
