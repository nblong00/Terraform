output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "name" {
    value = aws_iam_user.lb[*].name
}

output "combine" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}