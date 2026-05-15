# Validation

Run:

```bash
bash scripts/validate-public-boundary.sh
rg -n "planned|scaffolded|published|released|private/not-public|certification|code compliance|stamped engineering|legal approval|customer procedures|safety approval|production readiness|private incident|production procedures|active client deliverables|validation|review" .
git diff --check
git status --short
```

The `rg` scan is expected to find boundary terms in exclusion and review language, not as positive claims.
