resource "aws_iam_user" "my_iam_users" {
  count = 1
  name  = "${var.iam_user_name_prefix}_${count.index}"

}