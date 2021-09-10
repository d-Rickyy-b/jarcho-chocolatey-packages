$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_windows_386.zip'
$checksum32 = '154e715f0362144156b0decd341e13f39866509e95339870c01bcf168064584a'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.2/nextdns_1.37.2_windows_amd64.zip'
$checksum64 = '4cdf6c3081527a006f4288295c98563a57ad6be8f3447968d309e1a4fc62d3fb'

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
