terraform {
  backend "s3" {
    bucket         = "devops-team-internal"
    key            = "devops-project/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "test-vivek"     
    encrypt        = true
  }
}
