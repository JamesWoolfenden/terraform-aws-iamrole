# terraform-aws-iamuser

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-iamuser/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-iamuser)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-iamuser.svg)](https://github.com/JamesWoolfenden/terraform-aws-iamuser/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-iamuser.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-iamuser/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-iamuser/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-iamuser&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-iamuser/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-iamuser&benchmark=INFRASTRUCTURE+SECURITY)

---

## Creating a user for Terraform

## To Decode

```bash
terraform output encrypted_secret | base64 --decode | keybase pgp decrypt
```

```powershell
Set-Content -Path .\secret.b64 -Value $(terraform output AWS_Secret_Access_Key)

certutil -decode .\secret.b64 .\secret.txt

keybase pgp decrypt -i secret.txt
```

Then a dialog appears and you enter your pass-phrase to decode it.

Then add your profile:

```cli
aws configure --profile terraform
```

Now you can determine the least priviledge required for a user for a module to work.
