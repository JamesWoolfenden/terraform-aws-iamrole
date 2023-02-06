data "aws_iam_policy_document" "assume" {
  statement {
    sid = "1"

    effect = "Allow"
    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }

  }
}
