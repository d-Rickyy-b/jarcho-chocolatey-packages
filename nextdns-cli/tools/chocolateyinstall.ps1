$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.2/nextdns_1.32.2_windows_386.zip'
$checksum32 = '9f767af2816b800800d4542b5b081076fe4ab8a59303fdf26422920ac4b5da82'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.2/nextdns_1.32.2_windows_amd64.zip'
$checksum64 = '1707f69cc3e1569e856e15f0af831fba23896c87b8037b9f275bc12850360d89'

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
