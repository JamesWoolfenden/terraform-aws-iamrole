module "example" {
  source = "../../"
  assume = data.aws_iam_policy_document.statewriter.json
  policy = data.aws_iam_policy_document.assume.json
  role   = "state-writer"
  tags = {
    pike = "permissions"
  }
}
