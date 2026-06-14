$ErrorActionPreference = 'Stop'

$installDir = Join-Path $env:USERPROFILE 'NVPI'

$packageArgs = @{
    packageName   = 'nvpi'
    unzipLocation = $installDir
    url           = 'https://github.com/Orbmu2k/nvidiaProfileInspector/releases/download/v3.0.1.14/nvidiaProfileInspector.zip'
    checksum      = 'a67628108974f0890ee258c6ad767c7941dfadfe5f363e3d7cec5fde264e673d'
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