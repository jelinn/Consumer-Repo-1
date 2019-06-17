resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "${var.org}-${var.environment}-TestScores"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "TestScore"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "TestTitle"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  tags = {
    Name        = "${var.org}-dynamodb-table-1"
  }
}
