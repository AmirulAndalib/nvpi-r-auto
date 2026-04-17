$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI'

$packageArgs = @{
    packageName   = 'nvpi'
    unzipLocation = $installDir
    url           = 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases/download/v3.0.1.11/nvidiaProfileInspector.zip'
    checksum      = '68db1640186dd6fd78b5f7949348808b9a542ee95e2a52810b2eeed026e80236'
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$exe = Join-Path $installDir 'nvidiaProfileInspector.exe'
Install-ChocolateyShortcut `
    -ShortcutFilePath (Join-Path ([Environment]::GetFolderPath('Desktop')) 'NVIDIA Profile Inspector.lnk') `
    -TargetPath $exe `
    -WorkingDirectory $installDir

$startMenu = Join-Path ([Environment]::GetFolderPath('Programs')) 'NVIDIA Profile Inspector.lnk'
Install-ChocolateyShortcut `
    -ShortcutFilePath $startMenu `
    -TargetPath $exe `
    -WorkingDirectory $installDir


