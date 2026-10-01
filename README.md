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

## Install Glide

The tiling window manager from [KiboMibo/glide](https://github.com/KiboMibo/glide),
a fork of [Glide](https://github.com/glide-wm/glide) with scratchpad windows,
trackpad scrolling of the scroll layout and moving apps to a desktop with
window rules. For Apple silicon and Intel:

```bash
brew install --cask KiboMibo/tap/glide-kibo
glide launch
```

The cask also links the `glide` CLI. It conflicts with the official `glide`
cask, since both install `Glide.app`; uninstall that one first. `Glide.app` is
ad-hoc signed and not notarized; the cask clears its quarantine flag, and macOS
asks for Accessibility permission on the first launch. Upgrade with
`brew upgrade --cask glide-kibo`: the updater in Glide's status menu only
installs official releases.

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
