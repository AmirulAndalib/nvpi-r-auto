$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI-R'

$packageArgs = @{
    packageName   = 'nvpi-r'
    unzipLocation = $installDir
    url           = 'https://github.com/xHybred/NvidiaProfileInspectorRevamped/releases/download/v7.0.1.0/NVPI-R.zip'
    checksum      = 'be7d2b59a8c368f477628353238cf0b74575871cf2b5d935f4ffef31ee0deaa9'
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$nested = Join-Path $installDir 'NVPI-R'
if (Test-Path $nested) {
    Get-ChildItem $nested | Move-Item -Destination $installDir -Force
    Remove-Item $nested -Recurse -Force
}

$exe = Join-Path $installDir 'NVPI Revamped App\NVPI-R.exe'
Install-ChocolateyShortcut `
    -ShortcutFilePath (Join-Path ([Environment]::GetFolderPath('Desktop')) 'NVPI Revamped.lnk') `
    -TargetPath $exe `
    -WorkingDirectory (Split-Path $exe)

$startMenu = Join-Path ([Environment]::GetFolderPath('Programs')) 'NVPI Revamped.lnk'
Install-ChocolateyShortcut `
    -ShortcutFilePath $startMenu `
    -TargetPath $exe `
    -WorkingDirectory (Split-Path $exe)



