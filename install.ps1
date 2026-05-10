Write-Host "Downloading MaxOS..."

$root = "$env:USERPROFILE"

New-Item -ItemType Directory -Force -Path $root | Out-Null

Invoke-WebRequest `
"https://github.com/Tomfelkerytube/MaxOS/releases/download/maxos-ver1/kernel.bat" `
-OutFile "$root\kernel.bat"

if (Test-Path "$root\kernel.bat") {
    Write-Host "Starting MaxKernel..."
    Start-Process "$root\kernel.bat"
} else {
    Write-Host "Failed to download MaxOS."
}
