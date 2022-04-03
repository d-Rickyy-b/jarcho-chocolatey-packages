$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_windows_386.zip'
$checksum32 = '61e4a1ec11e97d2321c214ca716f6a1890caa3565cde1b21958eace81dcc474d'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.11/nextdns_1.37.11_windows_amd64.zip'
$checksum64 = 'd95b3b8c8c50a6deee6811c99787553eb3eba0e67971f92dcfd2293a8fe0e9cb'

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
