resource "aws_ssm_parameter" "rds_endpoint" {
  name  = "/tech-challenge-app/rds-endpoint"
  type  = "String"
  value = "jdbc:postgresql://${aws_db_instance.postgres.endpoint}/${local.db_credentials["db_name"]}"
}
