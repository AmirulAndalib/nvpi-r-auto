$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI'

$shortcut = Join-Path ([Environment]::GetFolderPath('Desktop')) 'NVIDIA Profile Inspector.lnk'
if (Test-Path $shortcut) {
    Remove-Item $shortcut -Force
}

$startMenuShortcut = Join-Path ([Environment]::GetFolderPath('Programs')) 'NVIDIA Profile Inspector.lnk'
if (Test-Path $startMenuShortcut) {
    Remove-Item $startMenuShortcut -Force
}

if (Test-Path $installDir) {
    Remove-Item $installDir -Recurse -Force
}
