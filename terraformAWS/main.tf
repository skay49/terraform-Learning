#Telling terraform to get aws as an provider 
terraform {

	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "5.55.0"
		}
	
	}

required_version = ">= 1.2.0"
}
	
provider "aws" {
	region = "us-east-2"

}

#Creating ec2 instances
resource "aws_instance" "ec2_instance" {

	ami = "ami-09040d770ffe2224f"
	# count  = 2
	instance_type = "t2.micro"

	tags = {
		Name = "terraformFromCLI"
	}

}

#Creating s3 bucket
resource "aws_s3_bucket" "create_s3_bucket" {

	bucket = "terra-s3-bucket-1"
	tags = {
		Name = "terra-s3-bucket-1"
		Environment = "Dev"
	}

}


#Outputing the private IP of ec2 instance created by terraform
output "ec2_public_ips"{

	value = aws_instance.ec2_instance[*].private_ip


}




