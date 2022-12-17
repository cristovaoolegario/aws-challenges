# Automating the creation of Groups and Policies

I've automated the creation of Groups and Policies that are needed for the company.

## Requirements

- [AWS CLI](https://aws.amazon.com/pt/cli/)
- [Terraform CLI](https://developer.hashicorp.com/terraform/cli)

Run `aws configure` and set up your credentials, then proceed to the next step.

## How to run it

Test it:

```shell
terraform plan
```

Apply it to the AWS instance:

```shell
terraform apply
```

Destroy it:

```shell
terraform destroy
```
