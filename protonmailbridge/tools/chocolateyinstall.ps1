$ErrorActionPreference = 'Stop';

$url32 = 'https://proton.me/download/bridge/Bridge-Installer.exe'
$checksum32 = '4877645c6258b5f64f5716ee493652c3ea6a485c34f41b3a1f5a7354dae246e1'

$packageArgs = @{
    packageName    = 'protonmailbridge'
    fileType       = 'exe'
    silentArgs     = '/quiet'
    validExitCodes = @(0)
    url            = $url32
    checksum       = $checksum32
    checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
