# Shitty.app from the KiboMibo/shitty fork; bump version/sha256 per release.
cask "shitty-app" do
  version "19"
  sha256 "b79b8a7fd3938dcfd559e5617e58d93c1183c3ff9fad7677a043745dcc0191ef"

  url "https://github.com/KiboMibo/shitty/releases/download/#{version}/Shitty.app.zip"
  name "Shitty"
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"

  depends_on arch: :arm64

  app "Shitty.app"

  # The app is ad-hoc signed, not notarized: without this Gatekeeper refuses
  # the first launch with "Apple could not verify...".
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Shitty.app"]
  end

  zap trash: [
    "~/.config/shitty",
    "~/Library/Saved Application State/org.pg83.shitty.savedState",
  ]
end
