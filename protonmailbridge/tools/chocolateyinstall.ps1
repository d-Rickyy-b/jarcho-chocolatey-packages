$ErrorActionPreference = 'Stop';

$url32 = 'https://github.com/ProtonMail/proton-bridge/releases/download/v2.2.2/Bridge-Installer.exe'
$checksum32 = 'a59a5ac931e84569180168140062109ccbf49e226c6a55106fe79a717b71cc58'

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
