$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.40.1/nextdns_1.40.1_windows_386.zip'
$checksum32 = '4f62f95c15b1a2543fb75fc497cd7aa9a61c9ed392bc3b13455767ebe59aa38b'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.40.1/nextdns_1.40.1_windows_amd64.zip'
$checksum64 = '1e7f2c217ecb82bdbf8fbce85880f7238138c9bc08913cd285c4c51117c11586'

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
