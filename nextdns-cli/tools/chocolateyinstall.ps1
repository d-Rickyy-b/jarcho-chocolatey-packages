$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.0/nextdns_1.32.0_windows_386.zip'
$checksum32 = 'da8253d1fb9d01656527fa383e3750714bfdab0c4d5fbbb3743dffa96c7b5aa3'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.0/nextdns_1.32.0_windows_amd64.zip'
$checksum64 = '7a04c3715fa472d20a462bbc5e49e68f63cb17746a8e3444b8069274fd9185a8'

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
