data "aws_iam_policy_document" "statewriter" {
  statement {
    sid = "1"

    effect = "Allow"
    actions = [
      "dynamodb:PutItem",
      "dynamodb:DeleteItem",
      "dynamodb:GetItem",
      "s3:ListBucket",
    ]

    resources = [
      "arn:aws:s3:::${data.aws_caller_identity.current.account_id}-terraform-state",
      "arn:aws:dynamodb:${var.region}:${data.aws_caller_identity.current.account_id}:table/dynamodb-state-lock"
    ]
  }
  statement {
    sid    = "2"
    effect = "Allow"
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject"
    ]
    resources = ["arn:aws:s3:::${data.aws_caller_identity.current.account_id}-terraform-state/*"]
  }
}
