# terraform-ovh

This contains my personal collection of terraform files managing my infrastructure at OVHcloud.

## Setup

### CI

A Github Action is configured to apply all state changes on pushes to main.

### Locally

1. Clone the repo
2. `cp .mise.dist.toml .mise.toml`
3. Edit the values in the mise config files.
4. `terraform init`
5. `terraform plan`

### Where to find secrets?

In Bitwarden, note "terraform-ovh config".

### How to generate new secrets?

For OVHcloud API, use the [token generation page](https://www.ovh.com/auth/api/createToken?GET=/*&POST=/*&PUT=/*&DELETE=/*).

For the S3 bucket:
1. go to the public cloud project
2. open the object storage page
3. open the "users" tab
4. get the creds for the existing user
