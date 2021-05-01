$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.1/nextdns_1.32.1_windows_386.zip'
$checksum32 = '9b8ad9928db00f7591196599c07d972fdaf696a6a258a052dda1291567504a94'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.32.1/nextdns_1.32.1_windows_amd64.zip'
$checksum64 = '65afbf4d765c40f3d10efff6d969b7fc3ef294659f6fce4727ecd85c59ca60bb'

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
