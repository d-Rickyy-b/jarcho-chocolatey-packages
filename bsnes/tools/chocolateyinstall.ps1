$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/bsnes-emu/bsnes/releases/download/v115/bsnes_v115-windows.zip'
$checksum = 'be2b3d17523f011359d1a88e05a54a0e70c846ee98a6b520d1a60e7422b2f7ef'

$packageArgs = @{
    packageName   = 'bsnes'
    unzipLocation = $toolsDir
    url           = $url
    checksum      = $checksum
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item $(Join-Path $(Join-Path "$toolsDir", 'bsnes_v115-windows'), 'settings.bml')
