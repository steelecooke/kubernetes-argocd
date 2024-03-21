output "argocd_admin_password_secret_arn" {
  description = "The ARN of the ArgoCD admin password secret"
  value       = aws_secretsmanager_secret.argocd_admin_password.arn
}

output "argocd_admin_password_secret_name" {
  description = "The name of the ArgoCD admin password secret"
  value       = aws_secretsmanager_secret.argocd_admin_password.name
}
