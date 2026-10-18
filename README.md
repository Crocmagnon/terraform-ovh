# terraform-ovh

This contains my personal collection of terraform files managing my infrastructure at OVHcloud.

## Setup

### CI

A GitHub Action is configured to apply all state changes on pushes to main.

### Locally

1. Clone the repo
2. Unlock (see below)
3. `terraform init`
4. `terraform plan`

### How to unlock?

In Bitwarden, note "terraform-ovh git-crypt key base64".

```fish
read -s key # input bitwarden note content
set tmp (mktemp)
echo $key | base64 -d > $tmp
git crypt unlock $tmp
```

### How to generate new secrets?

For OVHcloud API, use the [token generation page](https://www.ovh.com/auth/api/createToken?GET=/*&POST=/*&PUT=/*&DELETE=/*).

For the S3 bucket:
1. go to the public cloud project
2. open the object storage page
3. open the "users" tab
4. get the creds for the existing user
