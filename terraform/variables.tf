variable "aws_region" {
  default = ""
}

variable "ami_id" {
  default = ""
}

variable "instance_type" {
  default = ""
}

variable "key_name" {
  default = ""
}

variable "instance_name" {
  default = ""
}

variable "sg_name" {
  default = ""
}

variable "sg_description" {
  default = ""
}

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

# variable "sg_name" {
#   default = "papersocial-sg"
# }

# variable "sg_description" {
#   default = "Allow HTTP and SSH"
# }



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


# variable "subscription_id" {
#   default = "b8248299-e63a-417a-a335-5d3c87fa9990"
# }
# variable "client_id" {
#   default = "e3f426e5-a663-40b0-a54e-7c5d642b79af"
# }
# variable "client_secret" {
#   sensitive = true
#   default = "32N8Q~S~0fyVBdUnAR~Y01nXY9hXY13L1TGFAbNZ"
# }
# variable "tenant_id" {
#   default = "a3eaa001-4ee7-4f4c-ae0d-0b90d33be842"
# }
