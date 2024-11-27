variable "db_credentials" {
  type = map(string)
  default = {
    username = "postgres"
    password = "postgres"
    db_name  = "techchallenge"
  }
}

resource "aws_secretsmanager_secret" "db_credentials_secret" {
  name        = "tech-challenge-db-credentials"
  description = "Database credentials for PostgreSQL RDS Instance from Techchallenge APP"

  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "db_credentials_secret_version" {
  secret_id     = aws_secretsmanager_secret.db_credentials_secret.id
  secret_string = jsonencode(var.db_credentials)

}

data "aws_secretsmanager_secret_version" "db_credentials_secret_version" {
  secret_id = aws_secretsmanager_secret.db_credentials_secret.id

  depends_on = [aws_secretsmanager_secret_version.db_credentials_secret_version]
}
