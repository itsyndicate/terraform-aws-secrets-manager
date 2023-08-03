output "retrieved_secrets" {
  value = {
    for x in var.secret_keys :
    x => jsondecode(data.aws_secretsmanager_secret_version.secret_current.secret_string)["${x}"]
  }
  sensitive = true
}
