# Setup youtube-dl for GitHub Actions
Setup [youtube-dl](https://github.com/ytdl-org/youtube-dl) on GitHub Actions to use `youtube-dl`.

This action installs [youtube-dl](https://github.com/ytdl-org/youtube-dl) for use in actions by installing it using pip3.

This action only works on Ubuntu virtual environments as [conditionals](https://github.com/actions/runner/issues/646) does not work on [composite](https://docs.github.com/en/actions/creating-actions/creating-a-composite-run-steps-action) yet.

## Usage
To use `youtube-dl`, run this action before `youtube-dl`.

```yml
steps:
  - uses: actions/checkout@v2
    
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```

## FFmpeg
To improve youtube-dl's handling of formats, it is recommended to install FFmpeg first by using [FedericoCarboni/setup-ffmpeg](https://github.com/FedericoCarboni/setup-ffmpeg).

```yml
steps:
  - uses: actions/checkout@v2
    
  - name: Setup FFmpeg
    uses: FedericoCarboni/setup-ffmpeg@v1
    
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@v1
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```