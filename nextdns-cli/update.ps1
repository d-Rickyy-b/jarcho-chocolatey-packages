import-module au

function global:au_GetLatest {
  $response = Invoke-WebRequest "https://api.github.com/repos/nextdns/nextdns/releases"
  $releases = $response | ConvertFrom-Json
  $latest_release = $releases | Where-Object { $_.prerelease -eq $false } | Select-Object -First 1

  $version = $latest_release.tag_name.TrimStart("v")

  foreach ($asset in $latest_release.assets) {
    $asset_32 = $asset | Where-Object name -Match '_windows_386.zip$'
    $asset_64 = $asset | Where-Object name -Match '_windows_amd64.zip$'

    if ($asset_32) {
      $download_url_32 = $asset_32.browser_download_url
    }
    if ($asset_64) {
      $download_url_64 = $asset_64.browser_download_url
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
