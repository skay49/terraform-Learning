terraform {

	required_providers {

		aws = {

			source = "hashicorp/aws"
			version = "5.55.0"
		}

	}
	backend "s3" {
		bucket = "terra-s3-bukcet"
		key = "terraform.tfstate"
		region = "us-east-2"
		dynamodb_table = "test-dynamo-tbl"
	
	}
}
