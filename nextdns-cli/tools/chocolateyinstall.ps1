$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.4/nextdns_1.37.4_windows_386.zip'
$checksum32 = 'e970258b2ac8f7edd05053041996f04f9d2c30708e43f289d0641a5433f7831b'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.4/nextdns_1.37.4_windows_amd64.zip'
$checksum64 = '02d26e362b30f860a5035062691c0f7d8b087307d8ab19e2bd0194bf437be431'

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
