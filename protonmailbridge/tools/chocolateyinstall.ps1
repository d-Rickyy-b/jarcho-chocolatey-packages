$ErrorActionPreference = 'Stop';

$url32 = 'https://proton.me/download/bridge/Bridge-Installer.exe'
$checksum32 = '2892928462c1385626ae1dfaddb87b321fb6d7f74d6642156bdfef763abadf22'

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
