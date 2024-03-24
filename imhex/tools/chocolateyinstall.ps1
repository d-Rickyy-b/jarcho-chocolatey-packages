$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url32 = 'https://github.com/WerWolv/ImHex/releases/download/v1.33.2/imhex-1.33.2-Windows-Portable-x86_64.zip'
$checksum32 = '2c68672591ae84b262a9e7a4b7016e7439bff22dbdd1222b141870e7d5cf9c21'

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
