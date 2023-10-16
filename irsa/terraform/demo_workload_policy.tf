data "aws_iam_policy_document" "workload-1-policy" {
    provider = aws.asset-acct
    statement {
      actions = ["s3:ListBucket"]
      effect = "Allow"
      resources = ["*"]
    }
}

data "aws_iam_policy_document" "workload-2-policy" {
    provider = aws.asset-acct
    statement {
      actions = ["s3:ListBucket"]
      effect = "Allow"
      resources = ["*"]
    }
}

data "aws_iam_policy_document" "workload-3-policy" {
    provider = aws.asset-acct
    statement {
      actions = ["s3:ListBucket"]
      effect = "Allow"
      resources = ["*"]
    }
}


resource "aws_iam_policy" "irsa-workload-1-policy" {
    provider = aws.asset-acct
    name = "${var.resource-prefix}-project1-policy"
    policy = data.aws_iam_policy_document.workload-1-policy.json
}

resource "aws_iam_policy" "irsa-workload-2-policy" {
    provider = aws.asset-acct
    name = "${var.resource-prefix}-project2-policy"
    policy = data.aws_iam_policy_document.workload-2-policy.json
}
resource "aws_iam_policy" "irsa-workload-3-policy" {
  provider = aws.asset-acct
  name = "${var.resource-prefix}-project3-policy"
  policy = data.aws_iam_policy_document.workload-3-policy.json
}