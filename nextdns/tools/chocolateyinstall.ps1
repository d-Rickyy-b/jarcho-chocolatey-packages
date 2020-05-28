$ErrorActionPreference = 'Stop';

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$cert = Get-ChildItem Cert:\CurrentUser\TrustedPublisher -Recurse | Where-Object { $_.Thumbprint -eq '5E66E0CA2367757E800E65B770629026E131A7DC' }
if (!$cert) {
    Start-ChocolateyProcessAsAdmin "certutil -addstore 'TrustedPublisher' '$toolsPath\openvpn.cer'"
}

$packageArgs = @{
  packageName    = 'nextdns'
  fileType       = 'exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  url            = 'https://nextdns.io/download/windows/stable'
  checksum       = '2ea1c11845c75a05fd2769a168bbe227301572a79b8fbbc43522343998c9cb21'
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
