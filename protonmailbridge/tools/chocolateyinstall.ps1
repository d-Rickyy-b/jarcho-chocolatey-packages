$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/Bridge-Installer.exe'
$checksum32 = '58169bfd8f73da22445efc99be0372bf64cd501eaab4a5995ed1fa140cd444f0'

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
