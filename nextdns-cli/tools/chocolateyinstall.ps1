$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.11.0/nextdns_1.11.0_windows_386.zip'
$checksum32 = 'ece4df68d6cf5a1adc4e4a21473f2d74c33420cb673172dfa77dc44203dbdbb2'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.11.0/nextdns_1.11.0_windows_amd64.zip'
$checksum64 = '71a2d0252e31017eb06fc988e72f40e3e646b8649fc271a88bf1a92577b470b9'

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
