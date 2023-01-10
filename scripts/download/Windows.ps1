$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
Write-Host ::group::Downloading youtube-dl $env:version for Windows
New-Item youtube-dl -ItemType Directory
aria2c -d youtube-dl -x 16 -q $env:GITHUB_SERVER_URL/ytdl-org/youtube-dl/releases/download/$env:version/youtube-dl.exe
Write-Host ::endgroup::