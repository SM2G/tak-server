resource "aws_iam_user" "admin" {
  name = "${var.project_name["longname"]}-admin"
  path = "/users/"
}

# Attach AdministratorAccess policy
resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}