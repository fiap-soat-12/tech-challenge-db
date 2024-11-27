variable "aws_region" {
  type = string
  default = "us-east-1"
  description = "AWS Account Region"
}

variable "db_instance_identifier" {
  type = string
  default = "tech-challenge-db"
  description = "RDS DB Instance Identifier"
}