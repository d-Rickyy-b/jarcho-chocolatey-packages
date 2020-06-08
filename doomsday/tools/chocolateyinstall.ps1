$ErrorActionPreference = 'Stop';
$url32 = 'http://api.dengine.net/1/builds?dl=doomsday_2.2.2_x86.msi'
$checksum32 = 'f4c2d51831575c6b3de6d8476a8fbff2190fbdd3caa57d2801306d5cb0925a37'
$url64 = 'http://api.dengine.net/1/builds?dl=doomsday_2.2.2_x64.msi'
$checksum64 = 'daaf27bb06982c90a5a1fd868421dc4abf63f78b34703779644b5b6e9ff51c28'

$packageArgs = @{
    packageName    = 'doomsday'
    fileType       = 'msi'
    url            = $url32
    url64bit       = $url64
    softwareName   = 'Doomsday*'
    checksum       = $checksum32
    checksumType   = 'sha256'
    checksum64     = $checksum64
    checksumType64 = 'sha256'
    silentArgs     = "/quiet /norestart ALLUSERS=1"
    validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
