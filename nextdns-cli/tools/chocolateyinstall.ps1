$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.33.2/nextdns_1.33.2_windows_386.zip'
$checksum32 = '61cbeae4b8b31e707cd729c14b3a25a397327eca387a41ec84a60029a4395f5c'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.33.2/nextdns_1.33.2_windows_amd64.zip'
$checksum64 = '44d9d7c8eb1217171122fdbb60acca25ef09915f992df1a61cabc91e9a63f359'

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
