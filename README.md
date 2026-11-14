# Jack-Kroll/tap

Homebrew casks for my Mac apps.

## roo

A fast, private web browser for the Mac: native, keyboard-first, with ads and trackers blocked before they load.

```sh
brew install --cask jack-kroll/tap/roo
```

It needs macOS 15.4 or later.

- Update: `brew upgrade --cask roo`
- Remove: `brew uninstall --cask roo`, plus `--zap` to also delete its settings and website data

roo is not notarized by Apple yet, so after installing, the cask takes the download's quarantine flag off. Without that, macOS refuses to open it the first time.

Optional extras, installed separately:

- Video downloads: `brew install yt-dlp ffmpeg deno`
- The VPN (WireGuard): `brew install sing-box`
- Bitwarden: the Bitwarden app from the App Store, opened once
