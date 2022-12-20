resource "aws_iam_user" "adolfo_carlos" {
  name = "adolfo.carlos"
  tags = {
	 tag-key = "adolfo.carlos"
	}
  force_destroy = true
}

resource "aws_iam_user_group_membership" "adolfo_carlos_group_membership" {
  user = aws_iam_user.adolfo_carlos.name
  groups = [
		aws_iam_group.DBA.name,
	]
}
  
resource "aws_iam_user_policy_attachment" "adolfo_carlos_password_policy" {
  user       = aws_iam_user.adolfo_carlos.name
  policy_arn = "${data.aws_iam_policy.IAMUserChangePassword.arn}"
}

resource "aws_iam_user" "aguinaldo_balsemao" {
  name = "aguinaldo.balsemao"
  tags = {
	 tag-key = "aguinaldo.balsemao"
	}
  force_destroy = true
}

resource "aws_iam_user_group_membership" "aguinaldo_balsemao_group_membership" {
  user = aws_iam_user.aguinaldo_balsemao.name
  groups = [
		aws_iam_group.NetworkAdmin.name,
	]
}
  
resource "aws_iam_user_policy_attachment" "aguinaldo_balsemao_password_policy" {
  user       = aws_iam_user.aguinaldo_balsemao.name
  policy_arn = "${data.aws_iam_policy.IAMUserChangePassword.arn}"
}

resource "aws_iam_user" "alda_lage" {
  name = "alda.lage"
  tags = {
	 tag-key = "alda.lage"
	}
  force_destroy = true
}

resource "aws_iam_user_group_membership" "alda_lage_group_membership" {
  user = aws_iam_user.alda_lage.name
  groups = [
		aws_iam_group.CloudAdmin.name,
	]
}
  
resource "aws_iam_user_policy_attachment" "alda_lage_password_policy" {
  user       = aws_iam_user.alda_lage.name
  policy_arn = "${data.aws_iam_policy.IAMUserChangePassword.arn}"
}

resource "aws_iam_user" "amelia_penteado" {
  name = "amelia.penteado"
  tags = {
	 tag-key = "amelia.penteado"
	}
  force_destroy = true
}

resource "aws_iam_user_group_membership" "amelia_penteado_group_membership" {
  user = aws_iam_user.amelia_penteado.name
  groups = [
		aws_iam_group.LinuxAdmin.name,
	]
}
  
resource "aws_iam_user_policy_attachment" "amelia_penteado_password_policy" {
  user       = aws_iam_user.amelia_penteado.name
  policy_arn = "${data.aws_iam_policy.IAMUserChangePassword.arn}"
}

