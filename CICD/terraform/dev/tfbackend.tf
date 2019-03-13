terraform {
  backend "s3" {
    bucket  = "demo-anuhya"
    key     = "tf/us-east-2/dev.json"
    region  = "us-east-2"
    profile = "anuhya"
  }
}
