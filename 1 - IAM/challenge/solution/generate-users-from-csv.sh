INPUT=$1
OLDIFS=$IFS
IFS=',;'

[ ! -f $INPUT ] && { echo "$INPUT arquivo nao encontrado"; exit 99; }

command -v dos2unix >/dev/null || { echo "utilitario dos2unix nao encontrado. Por favor, instale dos2unix antes de rodar o script."; exit 1; }

dos2unix $INPUT

while read -r usuario grupo senha || [ -n "$usuario" ]
do
    if [ "$usuario" != "usuarios" ]; then
      userstr="${usuario/./_}"
      echo "$usuario - $grupo - $userstr"
	    echo 'resource "aws_iam_user" "'$userstr'" {
  name = "'$usuario'"
  tags = {\n\t tag-key = "'$usuario'"\n\t}
  force_destroy = true\n}

resource "aws_iam_user_group_membership" "'$userstr'_group_membership" {
  user = aws_iam_user.'$userstr'.name
  groups = [\n\t\taws_iam_group.'$grupo'.name,\n\t]\n}\n' >> users.tf
	fi
    

done < $INPUT

IFS=$OLDIFS