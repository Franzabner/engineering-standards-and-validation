# AGENTS.md

This repo is a Phase 6 local-only scaffold for public-safe standards awareness and validation discipline.

## Operating Rules

- Keep all content synthetic and public-safe.
- Use `Status: scaffolded`, `Publication state: private/not-public`, and `Release state: not released`.
- Do not imply certification, code compliance, stamped engineering, legal approval, safety approval, production readiness, active service offerings, or customer deliverables.
- Do not include customer data, Foundation-private data, secrets, credentials, private URLs, production procedures, sealed source, private logs, private incident reports, or active client deliverables.
- Templates are review aids only; they are not approvals, sign-offs, or authority documents.

## Validation

Run `scripts/validate-public-boundary.sh`, the plan-listed `rg` boundary/status scan, `git diff --check`, and `git status --short` before human review.
