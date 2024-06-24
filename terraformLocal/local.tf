#Creating file with content
resource "local_file" "DevOps"{
        filename = "/home/ubuntu/terraformCodes/terraform-local/devops_automated.txt"
        content = "I want to become a Devops engineer who knows terraform.:"

}

#Creating random string 
resource "random_string" "Ran-Str"{

        length = 20
        special = true
        override_special =  "!@#$%^&**()_+"

}


#Outputing result of random_string
output "Ra-Str" {

value = random_string.Ran-Str[*].result
}
