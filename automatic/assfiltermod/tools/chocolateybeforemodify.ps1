$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir   = "$(Join-Path $toolsDir x86)"
$installDir64 = "$(Join-Path $toolsDir x64)"

regsvr32.exe "$(Join-Path $installDir assfiltermod.dll)" /u /s
if (Get-OSArchitectureWidth -eq 64) {
  regsvr32.exe "$(Join-Path $installDir64 assfiltermod.dll)" /u /s
}
