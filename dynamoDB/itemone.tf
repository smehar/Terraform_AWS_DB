resource "aws_dynamodb_table_item" "itemone" {
  depends_on = [
    aws_dynamodb_table.demo_dynamo_table
  ]   
  
  # required
  table_name = aws_dynamodb_table.demo_dynamo_table.name 
  # required
  hash_key = aws_dynamodb_table.demo_dynamo_table.hash_key 
    
  range_key = aws_dynamodb_table.demo_dynamo_table.range_key 

  # key value item s attributes
  item = <<ITEM
  {
    "clientId": {"S": "001"},
    "clientAge": {"N": "100"},
    "other": {"N": "55"}
  }
  ITEM
  
}