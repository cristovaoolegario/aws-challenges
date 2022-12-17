
data "aws_iam_policy" "AdministratorAccess" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

data "aws_iam_policy" "AmazonRDSFullAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

data "aws_iam_policy" "AmazonEC2FullAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

data "aws_iam_policy" "AmazonVPCFullAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

data "aws_iam_policy" "ReadOnlyAccess" {
  arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "cloud-admin-full-access-policy-attach" {
  group       = "${aws_iam_group.CloudAdmin.name}"
  policy_arn = "${data.aws_iam_policy.AdministratorAccess.arn}"
}

resource "aws_iam_group_policy_attachment" "dba-aws-rds-full-access-policy-attach" {
  group       = "${aws_iam_group.DBA.name}"
  policy_arn = "${data.aws_iam_policy.AmazonRDSFullAccess.arn}"
}

resource "aws_iam_group_policy_attachment" "linux-admin-ec2-full-access-policy-attach" {
  group       = "${aws_iam_group.LinuxAdmin.name}"
  policy_arn = "${data.aws_iam_policy.AmazonEC2FullAccess.arn}"
}

resource "aws_iam_group_policy_attachment" "network-admin-vpc-full-access-policy-attach" {
  group       = "${aws_iam_group.NetworkAdmin.name}"
  policy_arn = "${data.aws_iam_policy.AmazonVPCFullAccess.arn}"
}

resource "aws_iam_group_policy_attachment" "intern-readonly-group-policy-attach" {
  group       = "${aws_iam_group.Intern.name}"
  policy_arn = "${data.aws_iam_policy.ReadOnlyAccess.arn}"
}

