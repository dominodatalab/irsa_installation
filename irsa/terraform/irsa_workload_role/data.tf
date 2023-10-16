data "aws_caller_identity" "current" {
}

data "aws_iam_policy" "policy-to-attach-to-role" {
    count = length(var.policy-to-attach) > 0 ? 1 : 0
    name = var.policy-to-attach
}