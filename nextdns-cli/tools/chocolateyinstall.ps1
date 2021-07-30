$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.35.0/nextdns_1.35.0_windows_386.zip'
$checksum32 = 'd01c064a03e49644fbe55d653753fdf946d7202db4dea5ffd5a2b8861db03e2c'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.35.0/nextdns_1.35.0_windows_amd64.zip'
$checksum64 = '656e7277b361e3a511bd24fe57d648b94f56603622b7c5bfe82de726e38e412a'

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
