resource "aws_s3_bucket" "django_static" {
  bucket = "django-app-static-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}