
resource "aws_iam_group" "CloudAdmin" {
  name = "CloudAdmin"
}

resource "aws_iam_group" "DBA" {
  name = "DBA"
}

resource "aws_iam_group" "LinuxAdmin" {
  name = "LinuxAdmin"
}

resource "aws_iam_group" "NetworkAdmin" {
  name = "NetworkAdmin"
}

resource "aws_iam_group" "Intern" {
  name = "Intern"
}