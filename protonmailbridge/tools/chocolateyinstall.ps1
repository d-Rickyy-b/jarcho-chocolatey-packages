$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/Bridge-Installer.exe'
$checksum32 = '4bc458c947139e46f903537531819185edc5006cac1d633235c5cdb7e5cdaaf3'

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
