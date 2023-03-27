import-module au

function global:au_GetLatest {
  $response = Invoke-WebRequest "https://api.github.com/repos/StreamWhatYouHear/SWYH/releases"
  $releases = $response | ConvertFrom-Json
  $latest_release = $releases | Where-Object { $_.prerelease -eq $false } | Select-Object -First 1

  $version = $latest_release.tag_name.TrimStart("v")

  foreach ($asset in $latest_release.assets) {
    $windows_asset = $asset | Where-Object name -Match 'SWYH_.*.exe$'
    if ($windows_asset) {
      $download_url = $windows_asset.browser_download_url
      break
    }
  }

  return @{
    Version = $version
    URL32   = $download_url
  }
}

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
      "(?i)(^\`$url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
      "(?i)(^\`$checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

update
