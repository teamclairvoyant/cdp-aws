## INPUTS:
## - OPTIONAL - A prefix to be given to your objects

## All artifact are named as per CDP Public Cloud Documentation
## https://docs.cloudera.com/management-console/cloud/environments/topics/mc-idbroker-minimum-setup.html

# If you want the generated artifacts to have a prefix to their name, then
# specify by using -var argument on the command line
# e.g. terraform appy -var="PREFIX=MyPrefix_"


### THESE VARIABLES WILL BE REQUESTED ON THE COMMAND LINE
variable "DATALAKE_BUCKET" {
  type = string
  description = <<EOF
  Enter the bucket name for the datlake (without a leading  s3:// or a trailing /).
  - Datalake location will be {bucketname}/
  - Logs location will be {bucketname}/logs
  - DynamoDB table will be {bucketname}* (e.g. {bucketname}, {bucketname}-s3a etc.)
  EOF
}


### THESE VARIABLES CAN BE SET BY COMMAND LINE FLAGS
### shellprompt$ terraform apply -var="PREFIX=MyPrefix_"

variable "PREFIX" {
  default = ""
  description = "Prefix for names of created objects (e.g. CDPPOC_)"
}

resource "aws_dynamodb_table" "table" {
  name     = "${var.PREFIX}${var.DATALAKE_BUCKET}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "parent"
  range_key = "child"

  attribute {
    name = "parent"
    type = "S"
  }

  attribute {
    name = "child"
    type = "S"
  }

  tags = {
    Name = "${var.PREFIX}${var.DATALAKE_BUCKET}"
  }
}

