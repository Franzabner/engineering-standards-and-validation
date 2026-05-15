#!/usr/bin/env python3
"""Lightweight scaffold check for standards validation templates."""

from pathlib import Path

required = [
    Path("templates/standards-aware-validation-template.md"),
    Path("validation-reports/validation-report-template.md"),
    Path("risk-registers/risk-register-template.csv"),
]

missing = [str(path) for path in required if not path.exists()]
if missing:
    raise SystemExit("Missing required template files: " + ", ".join(missing))

print("PASS standards validation template check")
