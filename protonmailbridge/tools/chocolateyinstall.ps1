$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/Bridge-Installer.exe'
$checksum32 = '12b68c18882974cd2d6974ca4c8ec5d68dd5d48eeb004da6a464aa7410e0ea34'

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
