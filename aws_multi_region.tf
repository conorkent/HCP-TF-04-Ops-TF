# Primary region provider
provider "aws" {
    region = "us-west-1"
}

# Secondary region provider
provider "aws" {
    alias  = "east"
    region = "us-east-1"
}

# S3 bucket in us-west-1
resource "aws_s3_bucket" "west_bucket" {
    bucket = "my-west-bucket-${random_id.bucket_suffix.hex}"
}

# S3 bucket in us-east-1
resource "aws_s3_bucket" "east_bucket" {
    bucket   = "my-east-bucket-${random_id.bucket_suffix.hex}"
    provider = aws.east
}

# Random ID for unique bucket names
resource "random_id" "bucket_suffix" {
    byte_length = 4
}

