$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI'

$packageArgs = @{
    packageName   = 'nvpi'
    unzipLocation = $installDir
    url           = 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases/download/v3.0.1.16/nvidiaProfileInspector.zip'
    checksum      = '00da82953f8d9d2650c0d89ffd182d82ff447eeaf032782e148628d61d33be30'
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