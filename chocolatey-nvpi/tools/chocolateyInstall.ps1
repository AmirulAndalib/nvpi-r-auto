$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI'

$packageArgs = @{
    packageName   = 'nvpi'
    unzipLocation = $installDir
    url           = 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases/download/v3.0.2.1/nvidiaProfileInspector.zip'
    checksum      = '88dcf3514111e8de630688467c03c36d8c2a8ad9ebc8073f27c069f82b75bb40'
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