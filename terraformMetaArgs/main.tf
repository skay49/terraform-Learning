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



#Creating ec2 instances using sets
locals {

	instance_names_sets = toset(["A", "B", "C", "D", "E"])
}


resource "aws_instance" "ec2_instance_sets" {

	for_each = local.instance_names_sets
	ami = "ami-033fabdd332044f06"
	instance_type = "t2.micro"

	tags = {
		Name = each.key
	}

}



#Creating ec2 instances using map
locals {

	instance_names_map = { "A":"ami-033fabdd332044f06", "B":"ami-0b7a317a30ce6d3a0", "C":"ami-09040d770ffe2224f",
				"D":"ami-0aa8fc2422063977a", "E":"ami-0ec3d9efceafb89e0" }
}


resource "aws_instance" "ec2_instance_map" {

	for_each = local.instance_names_map
	ami = each.value
	instance_type = "t2.micro"

	tags = {
		Name = each.key
	}

}



#Creating ec2 instances using count
resource "aws_instance" "ec2_instance" {

	ami = "ami-09040d770ffe2224f"
	#count creates similar resources
	count  = 2
	instance_type = "t2.micro"

	tags = {
		Name = "terraformFromCLI-${count.index}"
	}

}



