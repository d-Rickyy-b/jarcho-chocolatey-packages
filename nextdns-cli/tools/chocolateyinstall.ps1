$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_windows_386.zip'
$checksum32 = '0c7a1621ab91bcb6fa01f1240a833262f1ad4aed350af26446089097daf4358d'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.33.11/nextdns_1.33.11_windows_amd64.zip'
$checksum64 = '220dc0a68b9559430e596affd2a80974e1e5cf5c27a979d74f52e80effeeb933'

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
