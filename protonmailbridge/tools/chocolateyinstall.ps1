$ErrorActionPreference = 'Stop';

$url32 = 'https://proton.me/download/bridge/Bridge-Installer.exe'
$checksum32 = 'ddfaa8f2cbf81d8d6d4bacee53eb042eb8e068b878973d1b1b96a01022608e28'

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
