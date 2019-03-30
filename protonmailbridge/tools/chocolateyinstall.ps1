$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = 'C1E8766C3212A83885D5717979D66FDD3C00F492A0D03DB8DF56850FE96DDECF'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
