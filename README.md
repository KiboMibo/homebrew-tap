# KiboMibo Homebrew Tap

## Install Shitty

The terminal from [KiboMibo/shitty](https://github.com/KiboMibo/shitty),
Apple silicon only. The app, into `/Applications`:

```bash
brew install --cask KiboMibo/tap/shitty-app
```

Or the bare binaries, `st` and the politely named `pt`:

```bash
brew install KiboMibo/tap/shitty
brew install KiboMibo/tap/pretty
```

`Shitty.app` is ad-hoc signed and not notarized; the cask clears its
quarantine flag so the first launch is not refused.

## Install sshmon

```bash
brew install KiboMibo/tap/sshmon
```

Or tap first:

```bash
brew tap KiboMibo/tap
brew install sshmon
```

Upgrade:

```bash
brew update
brew upgrade sshmon
```

Upstream: https://github.com/KiboMibo/sshmon
