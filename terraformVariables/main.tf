#creating local files using HCL

# getting full filename and file content using variables
resource "local_file" "varFromKeyVal"{
	 
	filename = var.filename
	content = var.content_map["content1"]
}


resource "local_file" "devops" {

        filename = "/home/ubuntu/terraformCodes/terraformVariables/devOpsTest.txt"
        content = var.content_map["content2"]

}

#returning filename as in list & content as an mao function from variable.tf 
resource "local_file" "fileList" {

        filename = var.file_list[0]
        content = var.content_map["content2"]

}


#Output variabes value from variables.tf
output "devOps_Test" {

        value = var.test

}


output "aws_ec2" {

	value = var.aws_ec2_obj.keys
}


output "info" {

	value = var.name
	
}


