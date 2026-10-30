# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal Terraform configuration managing infrastructure on OVHcloud: DNS zones (augendre.info, coccomagnard.fr, g4b.ovh, gabnotes.org), S3 buckets, a dedicated server (srv-1), and PostgreSQL databases. State is stored in an OVH S3 backend. Secrets are encrypted with git-crypt.

## Commands

```bash
terraform init          # Initialize providers (required first time)
terraform fmt           # Format all .tf files
terraform validate      # Validate configuration
terraform plan          # Preview changes
terraform apply         # Apply changes (CI does this on push to main)
tflint --config=.tflint.hcl  # Lint
```

Tools are managed via `mise.toml` (terraform, tflint). Pre-commit hooks run `terraform_fmt`, `terraform_validate` (with `-lockfile=readonly`), and `terraform_tflint`.

## Architecture

- **Root `.tf` files**: Each file manages a specific concern. Domain files follow the pattern `domain-{domain}-{purpose}.tf` (e.g., `domain-augendre.info-vps-public.tf` for public DNS records). `locals.tf` centralizes IPs and common values.
- **`modules/`**: Reusable modules — `s3` (buckets), `db` (PostgreSQL), `mailgun` and `migadu` (email DNS records), `five_a_batteries` (DNS A and AAAA records).
- **`secrets.auto.tfvars`**: git-crypt encrypted. Contains sensitive variables auto-loaded by Terraform.
- **CAA records**: every zone allows only the CAs its hosts use, and forbids wildcards. srv-1 (Caddy) uses Let's Encrypt only; pika.page (Render) also uses Google Trust Services (`pki.goog`). `accounturi` pins srv-1's ACME account, so it only fits zones served by srv-1 alone (`g4b.ovh`, `gabnotes.org`): CNAMEs to GitHub Pages, pika or HetrixTools inherit the apex CAA. Check a new host's issuer before pointing a record at it.
- **Bucket lifecycle policies**: managed in `public-cloud.tf` with `ovh_cloud_project_storage_object_bucket_lifecycle_configuration`, next to each bucket module.

## CI

GitHub Actions (`.github/workflows/terraform.yml`) runs on push to main: fmt check → init → validate → plan → apply. The only secret is `GIT_CRYPT_KEY` (base64 git-crypt key), configured in the GitHub repo settings.

Renovate (`renovate.json`) opens monthly update PRs for providers, GitHub Actions and pre-commit hooks.

## Setup

Requires git-crypt unlock before `terraform init`. See README.md for unlock instructions (key stored in Bitwarden).
