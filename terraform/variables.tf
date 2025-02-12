variable "aws_region" {
  type = string
  default = "us-east-1"
  description = "AWS Account Region"
}

variable "tc_order_db_credentials" {
  type = map(string)
  default = {
    username = "postgres"
    password = "postgres"
    db_name  = "tc_order_db"
  }
}

variable "tc_cook_db_credentials" {
  type = map(string)
  default = {
    username = "postgres"
    password = "postgres"
    db_name  = "tc_cook_db"
  }
}

variable "sonarqube_db_credentials" {
  type = map(string)
  default = {
    username = "postgres"
    password = "postgres"
    db_name  = "sonarqube"
  }
}
