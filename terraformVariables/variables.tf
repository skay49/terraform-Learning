# Initialization of variables
variable "filename" {
        default = "/home/ubuntu/terraformCodes/terraformVariables/devOpsAutomated.txt"

}

variable "content" {

        default = "Auto-generated content"
}


# Declearing variable
variable "test" {}


#Initilazing vairable using map function
variable "content_map" {
	type=map
	default = {

	"content1" = "1st content"
	"content2" = "2nd content"

	}

}


#Initilazing vairable using list function
variable "file_list" {

	type=list(string)
	default = ["/home/ubuntu/terraformCodes/terraformVariables/file1.txt", "/home/ubuntu/terraformCodes/terraformVariables/file2.txt"]
	
}

#Initilazing vairable using object function
variable "aws_ec2_obj" {
	type = object({

		name = string
		instances = number
		keys = list(string)
		ami = string

	})
	
	default = {

		name = "ec2_instance"
		instances = 1
		keys = ["testKey.pem"]
		ami = "ubuntu@ec2-0-0-0-0"
	}
}




variable "name" {}

