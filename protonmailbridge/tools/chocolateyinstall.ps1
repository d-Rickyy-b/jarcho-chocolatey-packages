$ErrorActionPreference = 'Stop';

$url32 = 'https://proton.me/download/bridge/Bridge-Installer.exe'
$checksum32 = '387cb342e04ae31c07d73243d2548fbda319d837786d448f1da8378c7e6a17ad'

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
