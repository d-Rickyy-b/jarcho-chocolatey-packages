$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url32 = 'https://github.com/WerWolv/ImHex/releases/download/v1.13.0/Windows.Portable.ZIP.zip'
$checksum32 = '7e63cdd0b02e565b47b13e6193d96841b37013ba1243940027241044d49419a6'

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
