#!/bin/sh
set -eu
echo ::group::Downloading youtube-dl $version for $RUNNER_OS
mkdir youtube-dl
aria2c -d youtube-dl -x 16 -q $GITHUB_SERVER_URL/ytdl-org/youtube-dl/releases/download/$version/youtube-dl
chmod +x youtube-dl/youtube-dl
echo ::endgroup::