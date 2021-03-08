resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "SalesData"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "Location"
  range_key      = "Date"

  attribute {
    name = "Location"
    type = "S"
  }

  attribute {
    name = "Date"
    type = "S"
  }

  attribute {
    name = "Mileage"
    type = "N"
  }
  attribute {
    name = "Revenue"
    type = "N"
  }

  attribute {
    name = "Revenue"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  tags = {
    Name        = "Sales-Data-Table"
    Environment = "production"
  }
}