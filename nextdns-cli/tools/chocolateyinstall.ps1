$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.7/nextdns_1.37.7_windows_386.zip'
$checksum32 = '07ef5f6f965697712aa954a4a4bddae4386fb94f11954914387a4c3547e324e3'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.7/nextdns_1.37.7_windows_amd64.zip'
$checksum64 = '2a54d6052441d7257ad1fc51a514a58e580bdf59405fe3aee5927959818d8dca'

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
