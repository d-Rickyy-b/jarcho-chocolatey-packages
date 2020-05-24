$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.5.8/nextdns_1.5.8_windows_386.zip'
$checksum32 = '280234c3f0437923e3af00833ed29c4c416630d37f08e70065aff0bc13d93e13'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.5.8/nextdns_1.5.8_windows_amd64.zip'
$checksum64 = '291c8bd30f86eb966eb2d565ed1d67f3ba1a0b3349db484d27b92f4b6abc4dd5'

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
