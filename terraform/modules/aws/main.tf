data "aws_vpc" "default" {
  default = true
}

# data "aws_security_group" "existing" {
#   name   = var.sg_name
#   vpc_id = data.aws_vpc.default.id

#   # # ignore errors if not found
#   # lifecycle {
#   #   ignore_errors = true
#   # }
# }

resource "aws_security_group" "this" {
  # count       = data.aws_security_group.existing.id != "" ? 0 : 1
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [
    data.aws_security_group.existing.id != "" ?
    data.aws_security_group.existing.id :
    aws_security_group.this[0].id
  ]

  tags = {
    Name = var.instance_name
  }
}
