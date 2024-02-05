$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.42.0/nextdns_1.42.0_windows_386.zip'
$checksum32 = '82a25324a17ed75704e875261dd70970e8113ecdd38eb88f056923a96d41630a'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.42.0/nextdns_1.42.0_windows_amd64.zip'
$checksum64 = '33122b1a13b9136380f7154901a83de1b8d9be4a9e49231588bffb9d7e626d75'

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
