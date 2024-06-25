resource "aws_s3_bucket" "s3-bucket"{

	bucket = "terra-s3-bukcet"

}

resource "aws_dynamodb_table" "dynamo_table"{

	name = "test-dynamo-tbl"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	attribute {
		name= "LockID"
		type = "S"
	
	}


}
