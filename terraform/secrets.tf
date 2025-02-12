resource "aws_secretsmanager_secret" "tc_order_db_credentials_secret" {
  name        = "tech-challenge-order-db-credentials"
  description = "Database credentials for Order db PostgreSQL RDS Instance from Techchallenge APP"

  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret" "tc_cook_db_credentials_secret" {
  name        = "tech-challenge-cook-db-credentials"
  description = "Database credentials for Cook db PostgreSQL RDS Instance from Techchallenge APP"

  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret" "sonarqube_db_credentials_secret" {
  name        = "tech-challenge-sonarqube-db-credentials"
  description = "Database credentials for SonarQube db PostgreSQL RDS Instance from Techchallenge APP"

  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "tc_order_db_credentials_secret_version" {
  secret_id     = aws_secretsmanager_secret.tc_order_db_credentials_secret.id
  secret_string = jsonencode(var.tc_order_db_credentials)

  depends_on = [aws_secretsmanager_secret.tc_order_db_credentials_secret]
}

resource "aws_secretsmanager_secret_version" "tc_cook_db_credentials_secret_version" {
  secret_id     = aws_secretsmanager_secret.tc_cook_db_credentials_secret.id
  secret_string = jsonencode(var.tc_cook_db_credentials)

  depends_on = [aws_secretsmanager_secret.tc_cook_db_credentials_secret]
}

resource "aws_secretsmanager_secret_version" "sonarqube_db_credentials_secret_version" {
  secret_id     = aws_secretsmanager_secret.sonarqube_db_credentials_secret.id
  secret_string = jsonencode(var.sonarqube_db_credentials)

  depends_on = [aws_secretsmanager_secret.sonarqube_db_credentials_secret]
}

data "aws_secretsmanager_secret_version" "tc_order_db_credentials_secret_version" {
  secret_id = aws_secretsmanager_secret.tc_order_db_credentials_secret.id

  depends_on = [aws_secretsmanager_secret_version.tc_order_db_credentials_secret_version]
}

data "aws_secretsmanager_secret_version" "tc_cook_db_credentials_secret_version" {
  secret_id = aws_secretsmanager_secret.tc_cook_db_credentials_secret.id

  depends_on = [aws_secretsmanager_secret_version.tc_cook_db_credentials_secret_version]
}

data "aws_secretsmanager_secret_version" "sonarqube_db_credentials_secret_version" {
  secret_id = aws_secretsmanager_secret.sonarqube_db_credentials_secret.id

  depends_on = [aws_secretsmanager_secret_version.sonarqube_db_credentials_secret_version]
}
