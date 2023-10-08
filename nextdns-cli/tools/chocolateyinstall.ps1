$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.41.0/nextdns_1.41.0_windows_386.zip'
$checksum32 = '5f4ec27cbcfe581ce459753273704047c742d25cdd60ddb84723f2135cb948bf'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.41.0/nextdns_1.41.0_windows_amd64.zip'
$checksum64 = '847ac811e84e5be273eaee02fe51c0226ed98d6f241d9628310d8903ea777596'

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
