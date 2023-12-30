provider "aws" {
    region = "${var.AWS_REGION}"
}

terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "path/to/your/statefile.tfstate"  # Replace with your desired state file name
    region         = "us-west-2"  # Replace with your desired AWS region
    encrypt        = true  # Optional: Encrypt the state file
    dynamodb_table = "terraform-lock-table"  # Optional: Use a DynamoDB table for locking

    # Optionally, specify AWS credentials or profile
    # access_key = "YOUR_ACCESS_KEY"
    # secret_key = "YOUR_SECRET_KEY"
    # profile    = "YOUR_AWS_PROFILE"
  }
}
