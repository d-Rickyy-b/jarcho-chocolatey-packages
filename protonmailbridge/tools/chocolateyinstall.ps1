$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = 'fe75c62d972577f62f8b1933d99c937585c87b72e918bf14223ef2ef38db8711'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
