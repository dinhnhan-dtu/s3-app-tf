resource "aws_s3_bucket" "l1_bucket" {
  bucket = "tf-my-l1-bucket"

  tags = {
    Name = "L1 Bucket"
  }
}
# resource "aws_s3_bucket" "l2_bucket" {
#   bucket = "tf-my-l2-bucket"

#   versioning {
#     enabled = true
#   }

#   tags = {
#     Name = "L2 Bucket"
#   }
# }

# resource "aws_s3_bucket_public_access_block" "l2_bucket_public_access_block" {
#   bucket = aws_s3_bucket.l2_bucket.id

#   block_public_acls   = true
#   block_public_policy = true
#   ignore_public_acls  = true
#   restrict_public_buckets = true
# }