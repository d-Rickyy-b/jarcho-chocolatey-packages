$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.6.4/nextdns_1.6.4_windows_386.zip'
$checksum32 = 'd9b262db5ae6d6d301207a416193dcd50ce93dd14b7a039e016cadd11b263d3e'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.6.4/nextdns_1.6.4_windows_amd64.zip'
$checksum64 = 'e6a5060f396362078029fc5c6cb26b80032800438274088b35d8f74144df934c'

$packageArgs = @{
  packageName    = 'nextdns-cli'
  unzipLocation  = $toolsDir
  fileType       = 'zip'
  url            = $url32
  checksumType   = 'sha256'
  checksum       = $checksum32
  url64bit       = $url64
  checksumType64   = 'sha256'
  checksum64       = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
