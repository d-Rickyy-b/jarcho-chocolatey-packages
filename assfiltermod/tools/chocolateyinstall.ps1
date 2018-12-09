$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir   = "$(Join-Path $toolsDir x86)"
$installDir64 = "$(Join-Path $toolsDir x64)"
$url32      = 'https://github.com/Blitzker/assfiltermod/releases/download/0.4/assfiltermod_v0.4_x32.zip'
$checksum32 = '138003e042fdf7050ed192c5087de42cabb816371fa27db40ea599131e1a96f0'
$url64      = 'https://github.com/Blitzker/assfiltermod/releases/download/0.4/assfiltermod_v0.4_x64.zip'
$checksum64 = '77074ED9C28D12ED07569CBE293A6765AB7F2696034EDBA97875CFC92D5EB5AC'

$packageArgs = @{
  packageName    = 'assfiltermod'
  unzipLocation  = $installDir
  fileType       = 'zip'
  url            = $url32
  checksumType   = 'sha256'
  checksum       = $checksum32
}

$packageArgs64 = @{
  packageName   = 'assfiltermod'
  unzipLocation = $installDir64
  fileType      = 'zip'
  url           = $url64
  checksumType  = 'sha256'
  checksum      = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
regsvr32.exe "$(Join-Path $installDir assfiltermod.dll)" /s

if (Get-OSArchitectureWidth -eq 64) {
  Install-ChocolateyZipPackage @packageArgs64
  regsvr32.exe "$(Join-Path $installDir64 assfiltermod.dll)" /s
}
