resource "aws_s3_bucket" "buckets" {
  count = length(var.bucket_names)
  bucket = "${local.prefix}-${var.bucket_names[count.index]}-${var.account}"

  tags = local.common_tags
}
