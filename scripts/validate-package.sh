#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
status=0
while IFS= read -r file; do
  [[ -z "$file" ]] && continue
  [[ -s "$root/$file" ]] || { echo "FAIL: missing or empty $file"; status=1; }
done < "$root/validation/required-files.txt"
python3 -m json.tool "$root/MANIFEST.json" >/dev/null || { echo "FAIL: invalid MANIFEST.json"; status=1; }
[[ "$(tr -d '[:space:]' < "$root/VERSION")" == "1.0.0" ]] || { echo "FAIL: VERSION"; status=1; }
grep -q 'Stop after bootstrap validation' "$root/prompts/02-sentinel-x-architecture-security-bootstrap.md" || { echo "FAIL: bootstrap stop condition"; status=1; }
grep -q 'Phase A bootstrap validation passes' "$root/prompts/03-sentinel-x-platform-implementation.md" || { echo "FAIL: implementation prerequisite"; status=1; }
for term in 'Security Governor' 'deny-by-default' 'NO CAPABILITY = NO ACTION'; do grep -Rqi "$term" "$root/prompts" || { echo "FAIL: missing $term"; status=1; }; done
if [[ "$status" -eq 0 ]]; then echo 'PASS: package validation'; else echo 'FAIL: package validation'; fi
exit "$status"
