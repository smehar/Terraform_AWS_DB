# Create_dynamoDb table
resource "aws_dynamodb_table" "demo_dynamo_table" {
  name = "Client" #required uniq within region
  billing_mode = "PROVISIONED"
  read_capacity = 5
  write_capacity = 5

  # primary_key required
  hash_key = "clientId"  
  # sort_key
  range_key = "clientAge" 

  #required 
  attribute {
    name = "clientId"
    type = "S"    
  }
  attribute {
    name = "clientAge"
    type = "N"     
  }

  tags ={
    name = "demo dynamoDB table"
    Environment = "Testing"
  }
}

