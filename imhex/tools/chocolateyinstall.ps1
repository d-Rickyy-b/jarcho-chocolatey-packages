$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url32 = 'https://github.com/WerWolv/ImHex/releases/download/v1.11.1/Windows.Portable.ZIP.zip'
$checksum32 = 'e6fe0727b64ee20567962f01d3d09115a84d3ea4b9db24def0856d48006a7006'

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
