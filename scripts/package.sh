#!/usr/bin/env bash
set -euo pipefail
./scripts/validate-package.sh
version="$(tr -d '[:space:]' < VERSION)"
mkdir -p dist
archive="dist/sentinel-x-prompts-${version}.tar.gz"
tar --exclude='./dist' -czf "$archive" .
echo "Created $archive"
