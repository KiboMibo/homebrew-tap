# Shitty.app from the KiboMibo/shitty fork; bump version/sha256 per release.
cask "shitty-app" do
  version "18"
  sha256 "9427e779535980c131844fb500e6e9a6abc6499f82d85537b8c0063737f811e2"

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
