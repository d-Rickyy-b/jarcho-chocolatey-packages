$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url32 = 'https://github.com/WerWolv/ImHex/releases/download/v1.16.1/Windows.Portable.ZIP.zip'
$checksum32 = 'dd670176d138ddef963a5708f0ca6a353a89bcc77c1dd0ee53152e04de8f6e62'

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
