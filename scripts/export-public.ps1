# Regenerate public history from private repo (run from private clone path).
# Prerequisites: pip install git-filter-repo in .venv
# Usage: pwsh scripts/export-public.ps1 -PrivateRepo C:\path\to\machine-learning-data-mining -ShowcaseRepo C:\path\to\ml-data-mining-showcase
param(
  [string]$PrivateRepo = "C:\Users\metwaly\dev\machine-learning-data-mining",
  [string]$ShowcaseRepo = "C:\Users\metwaly\dev\ml-data-mining-showcase"
)
$ErrorActionPreference = "Stop"
if (Test-Path $ShowcaseRepo) { Remove-Item -Recurse -Force $ShowcaseRepo }
git clone $PrivateRepo $ShowcaseRepo
Set-Location $ShowcaseRepo
$py = Join-Path $PrivateRepo ".venv\Scripts\python.exe"
& $py -m git_filter_repo --force --paths-from-file scripts/public-paths.txt --invert-paths
Write-Host "Filtered. Add public docs, then commit. Run sensitive-string grep before push."
