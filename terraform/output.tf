resource "aws_ssm_parameter" "order_rds_endpoint" {
  name  = "/fiap-tech-challenge/order-rds-endpoint"
  type  = "String"
  value = "jdbc:postgresql://${aws_db_instance.tc_order_db_postgres.endpoint}/${local.tc_order_db_credentials["db_name"]}"
}

resource "aws_ssm_parameter" "cook_rds_endpoint" {
  name  = "/fiap-tech-challenge/cook-rds-endpoint"
  type  = "String"
  value = "${aws_db_instance.tc_cook_db_postgres.endpoint}"
}

resource "aws_ssm_parameter" "sonarqube_rds_endpoint" {
  name  = "/fiap-tech-challenge/sonarqube-rds-endpoint"
  type  = "String"
  value = "jdbc:postgresql://${aws_db_instance.sonarqube_db_postgres.endpoint}/sonarqube"
}
