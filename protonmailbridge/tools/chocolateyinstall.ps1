$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonmailbridge'
  fileType       = 'exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  url            = 'https://protonmail.com/download/Bridge-Installer.exe'
  checksum       = '2881f2c54f1e808ce0c8fadf747ea599775f816e5c0be79ad8722477ceb913c7'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
