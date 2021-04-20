$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.12.4/nextdns_1.12.4_windows_386.zip'
$checksum32 = 'fcbf9d1ee63ec15ff87678447556f3e4e558d0cd21e5a5cb85cd9c4b4d5f29f2'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.12.4/nextdns_1.12.4_windows_amd64.zip'
$checksum64 = 'd313071a9edc49e88b2ea204f809c4f93b7f1f2cff63c0663ca3e9b176889066'

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
