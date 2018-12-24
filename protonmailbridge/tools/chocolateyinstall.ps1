$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = '3F4589757E2BC22AD59E983913D420C20CADB0CBC4F9630D64F121415D7D924F'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
