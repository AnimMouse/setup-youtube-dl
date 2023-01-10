#!/bin/sh
set -eu
if [ $version = latest ]
then
  latest_version=$(gh api repos/ytdl-org/youtube-dl/releases/latest -q .tag_name)
  echo version=$latest_version >> $GITHUB_OUTPUT
else
  echo version=$version >> $GITHUB_OUTPUT
fi