Import-Module au

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri 'https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html' -UseBasicParsing
    $url32 = $download_page.links | ? href -Match 'IntelPowerGadget_(?<version>.*)\.msi' | select -First 1 -expand href
    return @{
        Version = $matches['version']
        URL32   = "https://software.intel.com$url32"
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
