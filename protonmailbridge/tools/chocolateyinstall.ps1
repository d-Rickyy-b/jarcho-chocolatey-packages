$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/bridge/Bridge-Installer.exe'
$checksum32 = '1ad377812adda4876bbdc6046e886b3694c2e05f10de3e14db2810576b58391d'

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
