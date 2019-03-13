terraform {
  backend "s3" {
    bucket  = "cicd-anuhya"
    key     = "tf/us-east-2/dev.json"
    region  = "us-east-2"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "default"
  }
}
