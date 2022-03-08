$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.10/nextdns_1.37.10_windows_386.zip'
$checksum32 = '79d5759f4cde5d06872204fd5a7f589f48fa0b3f280142e82c4e17da83426778'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.10/nextdns_1.37.10_windows_amd64.zip'
$checksum64 = 'e73338180b04686743bb3bc10eb804466768fa1e107bf151a7526cb9e2528cda'

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
