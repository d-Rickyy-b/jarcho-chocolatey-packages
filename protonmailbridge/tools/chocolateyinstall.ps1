$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = '79339370ed42a97b06b83e771a24d5246dbdc3e128b7ec14c5bfa196a22f12ba'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
