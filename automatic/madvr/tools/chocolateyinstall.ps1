$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'madvr'
  unzipLocation = $toolsDir
  fileType      = 'zip'
  url           = 'https://www.videohelp.com/download/madVR09214.zip'
  checksum      = '4A79B699521BAAFDC67B992486E9D96AC1E397DDDFB7C79EAC66ED7E27FA9150'
  checksumType  = 'sha256'
  options = @{
      Headers = @{
        Referer = 'https://www.videohelp.com/software/madVR'
      }
  }
}

Install-ChocolateyZipPackage @packageArgs

regsvr32.exe "$(Join-Path $toolsDir madVR.ax)" /s
if (Get-OSArchitectureWidth -eq 64) {
  regsvr32.exe "$(Join-Path $toolsDir madVR64.ax)" /s
}

$files = get-childitem $toolsDir -include *.exe -recurse
foreach ($file in $files) {
  New-Item "$file.gui" -type file -force | Out-Null
}
