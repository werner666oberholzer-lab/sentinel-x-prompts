$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$status = 0
Get-Content "$root/validation/required-files.txt" | ForEach-Object {
  if ($_ -and -not (Test-Path (Join-Path $root $_) -PathType Leaf)) { Write-Host "FAIL: missing $_"; $status = 1 }
}
Get-Content "$root/MANIFEST.json" -Raw | ConvertFrom-Json | Out-Null
if ((Get-Content "$root/VERSION" -Raw).Trim() -ne '1.0.0') { Write-Host 'FAIL: VERSION'; $status = 1 }
if (-not (Select-String -Path "$root/prompts/02-sentinel-x-architecture-security-bootstrap.md" -Pattern 'Stop after bootstrap validation')) { Write-Host 'FAIL: bootstrap stop condition'; $status = 1 }
if (-not (Select-String -Path "$root/prompts/03-sentinel-x-platform-implementation.md" -Pattern 'Phase A bootstrap validation passes')) { Write-Host 'FAIL: implementation prerequisite'; $status = 1 }
if ($status -eq 0) { Write-Host 'PASS: package validation' } else { Write-Host 'FAIL: package validation' }
exit $status
