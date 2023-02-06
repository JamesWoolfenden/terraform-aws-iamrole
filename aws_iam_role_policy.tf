resource "aws_iam_role_policy" "pike" {
  name_prefix = var.role
  role        = aws_iam_role.pike.id
  policy      = var.policy
}
