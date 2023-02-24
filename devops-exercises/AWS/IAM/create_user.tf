# Create Admin IAM group
resource "aws_iam_group" "Admin" {
  name = "Admin"
}

# Get AdministratorAccess policy arn
data "aws_iam_policy" "AdministratorAccess" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Attach AdminstratorAccess policy to Admin IAM group
resource "aws_iam_group_policy_attachment" "admin-access-policy-attach" {
  group       = "${aws_iam_group.Admin.name}"
  policy_arn = "${data.aws_iam_policy.AdministratorAccess.arn}"
}

# Create IAM user fulano_ciclano
resource "aws_iam_user" "fulano_ciclano" {
  name = "funalo.ciclano"
  tags = {
	 tag-key = "funalo.ciclano"
   role = "Devops"
	}
  force_destroy = true
}

# Add fulano_ciclano user to group AdministratorAccess membership 
resource "aws_iam_user_group_membership" "fulano_ciclano_group_membership" {
  user = aws_iam_user.fulano_ciclano.name
  groups = [
		data.aws_iam_policy.AdministratorAccess.name,
	]
}

# Get IAMUserChangePassword policy arn
data "aws_iam_policy" "IAMUserChangePassword" {
  arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
}

# Attach IAMUserChangePassword policy to user fulano_ciclano 
resource "aws_iam_user_policy_attachment" "fulano_ciclano_password_policy" {
  user       = aws_iam_user.fulano_ciclano.name
  policy_arn = "${data.aws_iam_policy.IAMUserChangePassword.arn}"
}