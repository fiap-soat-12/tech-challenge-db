resource "aws_security_group" "rds_sg" {
  name        = "rds_security_group"
  description = "Security group for RDS PostgreSQL"
  vpc_id      = data.aws_vpc.default.idx

  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [data.aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [for subnet in data.aws_subnet.selected_subnets : subnet.id]
}

resource "aws_db_instance" "postgres" {
  allocated_storage      = 10
  db_name                = local.db_credentials["db_name"]
  engine                 = "postgres"
  engine_version         = "13"
  instance_class         = "db.t3.micro"
  identifier             = "techchallengedb"
  username               = local.db_credentials["username"]
  password               = local.db_credentials["password"]
  parameter_group_name   = "default.postgres13"
  publicly_accessible    = false
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name

  skip_final_snapshot = true

  depends_on = [
    aws_security_group.rds_sg,
    aws_db_subnet_group.rds_subnet_group,
    aws_secretsmanager_secret_version.db_credentials_secret_version
  ]
}
