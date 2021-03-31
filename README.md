# Setup youtube-dl for GitHub Actions
Setup [youtube-dl](https://github.com/ytdl-org/youtube-dl) on GitHub Actions to use `youtube-dl`.

This action installs [youtube-dl](https://github.com/ytdl-org/youtube-dl) for use in actions by installing it using pip3.

## Usage
To use `youtube-dl`, run this action before `youtube-dl`.

```yml
steps:
  - uses: actions/checkout@v2
    
  - name: Setup youtube-dl
    uses: AnimMouse/setup-youtube-dl@main
    
  - run: youtube-dl https://www.youtube.com/watch?v=BaW_jenozKc
```