$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.3/nextdns_1.37.3_windows_386.zip'
$checksum32 = '2f1a196c20300ceeca75f0badee2868bd8f2f921a938ae668a8327587a72f015'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.3/nextdns_1.37.3_windows_amd64.zip'
$checksum64 = '0f7d4ea439d00ffb111b3d8f41493bbc757414177906c2984210858fc7452302'

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
