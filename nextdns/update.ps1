import-module au

function global:au_GetLatest {
  $url = 'https://nextdns.io/download/windows/stable'

  try {
    Invoke-WebRequest -Uri "$url" -MaximumRedirection 0 -ErrorAction Ignore
  } catch {
    $response = $_.Exception.Response
  }

  $file = $response.Headers.Location.SubString($response.Headers.Location.LastIndexOf('/') + 1)
  $version = $file.substring(13, $file.LastIndexOf('.'))
  return @{ Version = $version; URL32 = "$url" }
}

function global:au_SearchReplace {
  @{
    "tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
    }
  }
}

update
