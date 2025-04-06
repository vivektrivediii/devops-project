variable "aws_region" {}

variable "ami_id" {}

variable "instance_type" {}

variable "key_name" {}


variable "instance_name" {}


variable "sg_name" {
  default = "papersocial-sg"
}

variable "sg_description" {
  default = "Allow HTTP and SSH"
}



# ####az###
variable "resource_group_name" {
  default = "my-rg"
}
variable "location" {
  default = "East US"
}
variable "vm_name" {
  default = "myvm"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
  default = "P@ssword1234!"
}

# variable "sg_name" {
#   default = ""
# }

# variable "sg_description" {
#   default = ""
# }

#### Azure ####
# variable "resource_group_name" {}

# variable "location" {}

# variable "vm_name" {}


# variable "subscription_id" {
#   default = ""
# }

# variable "client_id" {
#   default = ""
# }

# variable "client_secret" {
#   sensitive = true
#   default   = ""
# }

# variable "tenant_id" {
#   default = ""
# }

# variable "aws_region" {
#   default =  "us-east-1"
# }
# variable "ami_id" {
#   default = "ami-00a929b66ed6e0de6"
# }
# variable "instance_type" {
#   default = "t2.micro"
# }
# variable "key_name" {
#   default = "Devops-vivek"
# }
# variable "instance_name" {
#   default = "PaperSocialAWS"
# }
