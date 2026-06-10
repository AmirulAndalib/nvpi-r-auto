$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI-R'

$packageArgs = @{
    packageName   = 'nvpi-r'
    unzipLocation = $installDir
    url           = 'https://github.com/xHybred/NvidiaProfileInspectorRevamped/releases/download/v7.1.0.0/NVPI-R.zip'
    checksum      = '42dc611298520a8bdedc209461b35d7baba7fa5829af18eaf6a96f468d966a9c'
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