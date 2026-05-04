data "aws_iam_policy_document" "statewriter" {
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
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
