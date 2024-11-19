resource "aws_ssm_parameter" "rds_endpoint" {
  name  = "/fiap-tech-challenge/tech-challenge-rds-endpoint"
  type  = "String"
  value = "jdbc:postgresql://${aws_db_instance.postgres.endpoint}/${local.db_credentials["db_name"]}"
}
