$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI-R'

$packageArgs = @{
    packageName   = 'nvpi-r'
    unzipLocation = $installDir
    url           = 'https://github.com/xHybred/NvidiaProfileInspectorRevamped/releases/download/v7.2.0.0/NVPI-R.zip'
    checksum      = '07d45e7e5bc4e64d1f593e253354bcce5da5e19a508dffe855afe8f596aa8646'
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$exe = Get-ChildItem $installDir -Recurse -Filter 'NVPI-R.exe' | Select-Object -First 1 -ExpandProperty FullName
if (-not $exe) { throw 'NVPI-R.exe not found after extraction' }
Install-ChocolateyShortcut `
    -ShortcutFilePath (Join-Path ([Environment]::GetFolderPath('Desktop')) 'NVPI Revamped.lnk') `
    -TargetPath $exe `
    -WorkingDirectory (Split-Path $exe)

$startMenu = Join-Path ([Environment]::GetFolderPath('Programs')) 'NVPI Revamped.lnk'
Install-ChocolateyShortcut `
    -ShortcutFilePath $startMenu `
    -TargetPath $exe `
    -WorkingDirectory (Split-Path $exe)