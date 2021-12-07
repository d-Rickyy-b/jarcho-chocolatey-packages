$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/bridge/Bridge-Installer.exe'
$checksum32 = 'f3222ba9098c03a1ab1b39f94a6cc06ef0ae6bc9d296ebb9af669e8ccd207af3'

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
