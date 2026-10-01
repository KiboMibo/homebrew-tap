# Shitty.app from the KiboMibo/shitty fork; bump version/sha256 per release.
cask "shitty-app" do
  version "20"
  sha256 "6ba4766a62c13343ec3b987d556881617c41510cd9f1d13168ee8a85d6bcdd17"

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
