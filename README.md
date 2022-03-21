# Setup youtube-dl for GitHub Actions
Setup [youtube-dl](https://github.com/ytdl-org/youtube-dl) on GitHub Actions to use `youtube-dl`.

This action installs [youtube-dl](https://github.com/ytdl-org/youtube-dl) for use in actions by installing it using pipx.

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
To improve youtube-dl's handling of formats, it is recommended to install FFmpeg first by using [FedericoCarboni/setup-ffmpeg](https://github.com/FedericoCarboni/setup-ffmpeg).

```yaml
steps:
  - name: Setup FFmpeg
    uses: FedericoCarboni/setup-ffmpeg@v1
    
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```