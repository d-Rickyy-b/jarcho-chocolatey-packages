$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url32 = 'https://github.com/WerWolv/ImHex/releases/download/v1.6.0/ImHex_1.6.0_Windows.zip'
$checksum32 = 'c2a19e28143c8d3d5fb70854798811ca75142aa8834d5103e1afa73407a219a6'

$installArgs = @{
    packageName   = 'imhex'
    unzipLocation = $toolsDir
    fileType      = 'zip'
    url           = $url32
    checksum      = $checksum32
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @installArgs

$installDir = $toolsDir
New-Item "$(Join-Path $installDir 'ImHex.exe.gui')" -type file -Force | Out-Null
