resource "aws_iam_role" "pike" {
  name_prefix        = var.role
  assume_role_policy = var.assume
  tags               = var.tags
}
