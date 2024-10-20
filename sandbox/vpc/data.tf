data "terraform_remote_state" "s3" {
  backend = "s3"

  config = {
    dynamodb_table = "terraform-remote-state-445567079474"
    bucket = "terraform-remote-state-445567079474"
    key    = "sandbox/vpc/terraform.tfstate"
    region = "eu-west-2"
  }
}
