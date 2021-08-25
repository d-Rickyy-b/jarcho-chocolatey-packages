$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.36.0/nextdns_1.36.0_windows_386.zip'
$checksum32 = '231263958f78f5a2636e788be1f161c2444751b11bdcda8023439920a890e82c'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.36.0/nextdns_1.36.0_windows_amd64.zip'
$checksum64 = '97ef4d3b30fabf104329e66fa6d69c44f3e77211c943776a9d29b0abb579f142'

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
