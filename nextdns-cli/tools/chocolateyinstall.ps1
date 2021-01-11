$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.9.6/nextdns_1.9.6_windows_386.zip'
$checksum32 = '318f6a80841197d7de9caae013b28958893c69572d803200f38b7ee662479f4c'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.9.6/nextdns_1.9.6_windows_amd64.zip'
$checksum64 = 'da843ab3e82876eddd38408cea2144c7698ee5cae4e64fd688a494f4897256d5'

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
