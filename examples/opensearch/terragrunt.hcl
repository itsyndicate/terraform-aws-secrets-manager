# ---------------------------------------------------------------------------------------------------------------------
# This is an example of how to reference secret values parsed in the |secrets_manager| folder using Terragrunt
# ---------------------------------------------------------------------------------------------------------------------

# Your Terragrunt configuration...

dependency "secrets_manager" {
  config_path = "../secrets_manager"
}

inputs = {
  # Your Terragrunt configuration...

  advanced_security_options = {
    master_user_options     = {
      master_user_name     = "${dependency.secrets_manager.outputs.retrieved_secrets.MY_OPENSEARCH_MASTER_USER}"
      master_user_password = "${dependency.secrets_manager.outputs.retrieved_secrets.MY_OPENSEARCH_MASTER_USER_PASSWORD}"
    }
  }

  # Your Terragrunt configuration...
}
