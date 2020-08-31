provider "aws" {    
    version = "~> 3.3"
    region  = "us-east-2"
}

# plan - execute
resource "aws_s3_bucket" "my_bucket_kfroman" {
    bucket =    "my-s3-bucket-kfroman-tf-002"
    versioning {
        enabled = true
        mfa_delete = false
    }
}


resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc"
}

output "aws_s3_bucket_versioning" {
  value       = "aws_s3_bucket.my_bucket_kfroman.versioning[0].enabled" 
}
