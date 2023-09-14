$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.40.0/nextdns_1.40.0_windows_386.zip'
$checksum32 = '4774c9e0a719d0e495d193c0fa8b033a2d8d16c45f22ab99cbda51e45ed07494'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.40.0/nextdns_1.40.0_windows_amd64.zip'
$checksum64 = '47c9b7c495035b8634db01a64f3d8e9f067a60b5c809dd19007a1463c1e4679e'

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
