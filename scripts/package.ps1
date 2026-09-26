$ErrorActionPreference = 'Stop'
& "$PSScriptRoot/validate-package.ps1"
$version = (Get-Content (Join-Path $PSScriptRoot '../VERSION') -Raw).Trim()
$dist = Join-Path $PSScriptRoot '../dist'
New-Item -ItemType Directory -Force $dist | Out-Null
$archive = Join-Path $dist "sentinel-x-prompts-$version.zip"
$items = Get-ChildItem (Join-Path $PSScriptRoot '..') -Force | Where-Object { $_.Name -notin @('dist','.git') }
Compress-Archive -Path $items.FullName -DestinationPath $archive -Force
Write-Host "Created $archive"
