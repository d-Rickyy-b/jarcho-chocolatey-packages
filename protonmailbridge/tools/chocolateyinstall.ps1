$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/bridge/Bridge-Installer.exe'
$checksum32 = 'b277951b1057040d0c74b2c7182d69d0d70c70365cbc8ad5b1b39d5a2234118d'

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
