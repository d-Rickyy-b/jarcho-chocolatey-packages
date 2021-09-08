$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.1/nextdns_1.37.1_windows_386.zip'
$checksum32 = '83de22551f102060308b039bbc5e6a23c3f346f56dc37e1a6e3f454f91804df3'
$url64      = 'https://github.com/nextdns/nextdns/releases/download/v1.37.1/nextdns_1.37.1_windows_amd64.zip'
$checksum64 = '5fdd2ddcf787be9ddab5a8c75499c7fb43862160e8e8e460f84903a9049dc872'

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
