resource "random_password" "argocd_admin_password" {
  length           = var.password_length
  special          = var.include_special
  override_special = var.override_special_characters
}

resource "aws_secretsmanager_secret" "argocd_admin_password" {
  name        = "${var.name}-argocd-admin-password"
  description = "ArgoCD admin account password"
  tags = {
    project           = var.project
    terraform_managed = true
  }
}

resource "aws_secretsmanager_secret_version" "argocd_admin_password_version" {
  secret_id     = aws_secretsmanager_secret.argocd_admin_password.id
  secret_string = jsonencode({
    argocd_users_admin_pwd_new = random_password.argocd_admin_password.result
  })
}
