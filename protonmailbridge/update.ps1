Import-Module au

function global:au_GetLatest {
    $content = Invoke-WebRequest -Uri 'https://protonmail.com/download/current_version_windows.json' | ConvertFrom-Json

    return @{
        Version = $content.Version
        URL32   = $content.InstallerFile
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
