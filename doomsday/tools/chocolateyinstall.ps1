$ErrorActionPreference = 'Stop';
$url32 = 'http://api.dengine.net/1/builds?dl=doomsday_2.3.0_x86.msi'
$checksum32 = '0cb4539bb6e011901a49683276120a8d28217e66388b5cfdc4c1f1e5b0b520e3'
$url64 = 'http://api.dengine.net/1/builds?dl=doomsday_2.3.0_x64.msi'
$checksum64 = '16d4299eddde556529ae0c08cfa0dfd91199a58a02582e8466647453c7659891'

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
