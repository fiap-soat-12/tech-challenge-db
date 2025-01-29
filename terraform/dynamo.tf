resource "aws_dynamodb_table" "tc_payment_db" {
  name           = "tc_payment_db"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1

  hash_key = "id"
  range_key = "date"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "date"
    type = "S"
  }
}