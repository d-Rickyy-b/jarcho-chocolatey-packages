$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = 'A4031D98C9E5170D55915660F20A21A1036E31AB19E04C5918146B0D8982400F'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
