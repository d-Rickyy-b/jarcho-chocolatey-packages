$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/bridge/Bridge-Installer.exe'
$checksum32 = 'f440493b92c3c11d22cb9e4c6628635f7ba1371a3b6f02376fa8380b2d4dca62'

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
