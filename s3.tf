provider "aws" {
region = "ap-south-1"
access_key = "AKIASK65QSUXHTQVWY3L"
secret_key = "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"
}

resource "aws_s3_bucket" "mybucket" {
bucket = "taraka-2"
acl = "public-read"
versioning{
enabled = true
}
}
