# terraform-gce-vault

Launches Vault in GCE using [terraform-google-vault](https://github.com/terraform-google-modules/terraform-google-vault) module.

This repository was tested with `Terraform v0.12.25` and `Vault v1.1.3`.

## Prerequisites

* Install [jq](https://stedolan.github.io/jq/)
* Install [Google Cloud SDK](https://cloud.google.com/sdk/install)
* Install [Vault](https://www.vaultproject.io/docs/install/)
* Change [Project ID](https://github.com/alexandarp/terraform-gce-vault/blob/master/variables.tf#L3)
* Enable Compute Engine API
* Increase GCE Static Address Quota

## Usage

Initialize Terraform:

```
$ terraform init
```

View the changes:

```
$ terraform plan
```

Apply the Terraform changes:

```
$ terraform apply
```

## Questions?

Open an issue.
