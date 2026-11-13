# Light check: venv has pinned ML stack imports. No graded notebooks in public repo.
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

if (-not (Test-Path ".\.venv\Scripts\python.exe")) {
    Write-Host "FAIL: create .venv and pip install -r requirements.txt first"
    exit 1
}

& .\.venv\Scripts\python.exe -c @"
import sklearn, numpy, pandas, matplotlib, mglearn
print('OK', sklearn.__version__, numpy.__version__)
"@
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host "Smoke test passed."
