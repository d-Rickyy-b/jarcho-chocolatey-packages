$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.5/nextdns_1.37.5_windows_386.zip'
$checksum32 = '9f0dc26e6814221651c9cef99673410e7570a3f8ff0acd3c0e0f5f8f42bd0c74'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.5/nextdns_1.37.5_windows_amd64.zip'
$checksum64 = '0a99f73f9248ec9802fdcd9143a17c032b27afa0f82f78eb211a9038cf225a3c'

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
