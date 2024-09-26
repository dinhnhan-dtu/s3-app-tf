resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  tags = {
    Name = "L3 Custom Bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "this_public_access_block" {
  bucket = aws_s3_bucket.this.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}