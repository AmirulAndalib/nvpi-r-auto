$installDir = Join-Path $env:USERPROFILE 'NVPI-R'

$shortcut = Join-Path ([Environment]::GetFolderPath('Desktop')) 'NVPI Revamped.lnk'
if (Test-Path $shortcut) {
    Remove-Item $shortcut -Force
}

if (Test-Path $installDir) {
    Remove-Item $installDir -Recurse -Force
}
