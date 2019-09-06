$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = '46620b2b7e4ddac62e3e90a935cf6d2abb521cef425a5fea26c88ac6e507ac0e'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
