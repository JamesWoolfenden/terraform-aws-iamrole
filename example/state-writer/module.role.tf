module "example" {
  source = "../../"
  assume = data.aws_iam_policy_document.assume.json
  policy = data.aws_iam_policy_document.statewriter.json
  role   = "state-writer"
  tags = {
    pike = "permissions"
  }
}
