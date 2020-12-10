Import-Module au

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri 'https://github.com/WerWolv/ImHex/releases' -UseBasicParsing
    $url32 = $download_page.links | ? href -Match 'ImHex_.*_Windows.zip$' | select -First 1 -expand href
    (Split-Path -Path "$url32" -Leaf) -match 'ImHex_(?<version>.*)_Windows.zip'
    return @{
        Version = $matches['version']
        URL32   = "https://github.com$url32"
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
