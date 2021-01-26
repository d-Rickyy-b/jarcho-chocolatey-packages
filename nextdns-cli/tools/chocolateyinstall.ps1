$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.10.1/nextdns_1.10.1_windows_386.zip'
$checksum32 = '86130da8dfcee74ba4542fcc27254f48b234425bf9fb0b777cd4c372d23673f1'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.10.1/nextdns_1.10.1_windows_amd64.zip'
$checksum64 = '0c56ba4f404e5eb96dc0dae8f7e1e887907c9722a1bc8b662ea7c597258a805a'

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
