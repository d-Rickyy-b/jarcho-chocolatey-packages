$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.34.2/nextdns_1.34.2_windows_386.zip'
$checksum32 = '670088d688569a6c0dffe4d5e8cf7b0f3111de3c68043ec7e91b03f59587cb58'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.34.2/nextdns_1.34.2_windows_amd64.zip'
$checksum64 = '73ba960354ddf8633e8562f3ada74eb893860b420bc5249235229a5bbb2387cf'

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
