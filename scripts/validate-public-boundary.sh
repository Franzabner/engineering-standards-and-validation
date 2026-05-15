#!/usr/bin/env bash
set -u

missing=0

required_files=(
  "AGENTS.md"
  "README.md"
  "STATUS.md"
  "PUBLIC_BOUNDARY.md"
  "CLAIMS.md"
  "VALIDATION.md"
  "ARTIFACT_REGISTER.md"
  "REVIEW_LOG.md"
  "requirements.txt"
  "standards-awareness/README.md"
  "standards-awareness/standards-awareness-boundary.md"
  "safety-checklists/README.md"
  "safety-checklists/non-certified-safety-review-checklist.md"
  "commissioning-plans/README.md"
  "commissioning-plans/commissioning-plan-template.md"
  "test-procedures/README.md"
  "test-procedures/synthetic-test-procedure-template.md"
  "risk-registers/README.md"
  "risk-registers/risk-register-template.csv"
  "risk-registers/risk-register-template.md"
  "failure-modes/README.md"
  "failure-modes/failure-mode-table-template.md"
  "validation-reports/README.md"
  "validation-reports/validation-report-template.md"
  "acceptance-criteria/README.md"
  "acceptance-criteria/acceptance-criteria-template.md"
  "diagrams/README.md"
  "diagrams/validation-review-flow.mmd"
  "scripts/validate-public-boundary.sh"
  "scripts/run-validation-template-check.py"
  "templates/standards-aware-validation-template.md"
  "templates/commissioning-checklist-template.md"
  "templates/acceptance-criteria-template.md"
  "templates/failure-mode-review-template.md"
)

for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    printf "PASS %s\n" "$file"
  else
    printf "FAIL %s\n" "$file"
    missing=$((missing + 1))
  fi
done

required_terms=(
  "planned"
  "scaffolded"
  "published"
  "released"
  "private/not-public"
  "certification"
  "code compliance"
  "stamped engineering"
  "legal approval"
  "customer procedures"
  "safety approval"
  "production readiness"
  "private incident"
  "production procedures"
  "active client deliverables"
  "validation"
  "review"
)

for term in "${required_terms[@]}"; do
  if rg -q "$term" .; then
    printf "PASS term: %s\n" "$term"
  else
    printf "FAIL term: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

blocked_files="$(find . -path ./.git -prune -o \( -iname '*.f3d' -o -iname '*.step' -o -iname '*.stp' -o -iname '*.kicad_pcb' -o -iname '*.sch' -o -iname '*.brd' -o -iname '*.gbr' -o -iname '*.key' -o -iname '*.pem' -o -iname '*.log' \) -print)"
if [ -z "$blocked_files" ]; then
  printf "PASS blocked artifact scan\n"
else
  printf "FAIL blocked artifact scan\n%s\n" "$blocked_files"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "Result: PASS - standards validation public boundary scaffold is complete.\n"
else
  printf "Result: FAIL - %s required checks failed.\n" "$missing"
fi

exit "$missing"
