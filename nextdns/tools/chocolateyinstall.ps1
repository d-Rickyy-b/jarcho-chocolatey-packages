$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'nextdns'
  fileType       = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  url            = 'https://storage.googleapis.com/nextdns_windows/NextDNSSetup-1.0.12.exe'
  checksum       = '2ea1c11845c75a05fd2769a168bbe227301572a79b8fbbc43522343998c9cb21'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
