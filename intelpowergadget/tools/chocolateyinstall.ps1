$ErrorActionPreference = 'Stop';
$tempDir = "$(Get-PackageCacheLocation)"
$tempFile = "$(Join-Path $tempDir intelpowergadget.zip)"

$downloadArgs = @{
  packageName   = 'intelpowergadget'
  fileFullPath  = $tempFile
  url           = 'https://software.intel.com/file/612178/download'
  checksum      = 'CB224ADB799D2029679B02201C3B517224124283D9EB4F64A1FEC2182C6DF5CE'
  checksumType  = 'sha256'
}
$unzipArgs = @{
  fileFullPath = $tempFile
  destination  = $tempDir
}
$installArgs = @{
  packageName    = 'intelpowergadget'
  fileType       = 'msi'
  silentArgs     = '/quiet', 'ALLUSERS=1'
  file           = $(Join-Path $tempDir PowerGadget.msi)
}

Get-ChocolateyWebFile @downloadArgs
Get-ChocolateyUnzip @unzipArgs
Install-ChocolateyInstallPackage @installArgs
