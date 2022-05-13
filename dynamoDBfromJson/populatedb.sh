
#print region
aws configure get region
#print table
aws dynamodb list-tables
#fill records
aws dynamodb batch-write-item --request-items file://itemstoload.json
