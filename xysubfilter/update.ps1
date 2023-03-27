import-module au

function global:au_GetLatest {
  $response = Invoke-WebRequest "https://api.github.com/repos/Cyberbeing/xy-VSFilter/releases"
  $releases = $response | ConvertFrom-Json
  $latest_release = $releases | Where-Object { $_.prerelease -eq $false } | Select-Object -First 1

  $version = $latest_release.tag_name.TrimStart("v")

  foreach ($asset in $latest_release.assets) {
    $asset32 = $asset | Where-Object name -Match '_x86.zip$'
    $asset64 = $asset | Where-Object name -Match '_x64.zip$'
      
    if ($asset32) {
      $download_url_32 = $asset32.browser_download_url
    }
    if ($asset64) {
      $download_url_64 = $asset64.browser_download_url
    }
  }
  
  return @{
    Version = $version
    URL32   = $download_url_32
    URL64   = $download_url_64
  }
}

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
      "(?i)(^\`$url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(?i)(^\`$checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(?i)(^\`$url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(?i)(^\`$checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
    }
  }
}

update
