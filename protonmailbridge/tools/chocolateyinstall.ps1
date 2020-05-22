$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = '5cbdb8b0f3cfa8f5f195df0a1b75421d092783a6da3f8117c89256e079c87e86'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
