# Setup youtube-dl for GitHub Actions
Setup [youtube-dl](https://github.com/ytdl-org/youtube-dl) on GitHub Actions to use `youtube-dl`.

This action installs [youtube-dl](https://github.com/ytdl-org/youtube-dl) for use in actions by installing it on tool cache using [AnimMouse/tool-cache](https://github.com/AnimMouse/tool-cache).

This action is implemented as a [composite](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) action.

## Deprecation
This action is deprecated, please use [AnimMouse/setup-yt-dlp](https://github.com/AnimMouse/setup-yt-dlp) instead.

## Usage
To use `youtube-dl`, run this action before `youtube-dl`.

```yaml
steps:
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```

## FFmpeg
To improve youtube-dl's handling of formats like merging `bestvideo+bestaudio` instead of just using `best`, it is recommended to install FFmpeg first by using [FedericoCarboni/setup-ffmpeg](https://github.com/FedericoCarboni/setup-ffmpeg).

```yaml
steps:
  - name: Setup FFmpeg
    uses: FedericoCarboni/setup-ffmpeg@v1
    
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```

### Specific version
You can specify the version you want. By default, this action downloads the latest version.

```yaml
steps:
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    with:
      version: 2021.02.04
```

### GitHub token
This action automatically uses a GitHub token in order to authenticate with GitHub API and avoid rate limiting. You can also specify your own read-only fine-grained personal access token.

```yaml
steps:
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    with:
      token: ${{ secrets.GH_PAT }}
```