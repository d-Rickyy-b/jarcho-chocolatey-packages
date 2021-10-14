$ErrorActionPreference = 'Stop';

$url32 = 'https://protonmail.com/download/bridge/Bridge-Installer.exe'
$checksum32 = '2e2ddeca69b5d2eb54adb13331a540d610b8bccd0d69073fbcf549c0b5b913fe'

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
