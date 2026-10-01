# Glide.app from the KiboMibo/glide fork; bump version/sha256 per release.
cask "glide-kibo" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.16-kibo.1"
  sha256 arm:   "d060e70531a4d66af141a40a71e7ef211472c6cfdf08bd0498ee6a5e4a892aab",
         intel: "086bd65f2b201790835e700f80375d7d11eab49eaf51df7a9c6639a95a38d2f5"

  url "https://github.com/KiboMibo/glide/releases/download/v#{version}/Glide_#{version}_#{arch}.app.zip"
  name "Glide"
  desc "Tiling window manager (KiboMibo fork: scratchpads, desktop rules)"
  homepage "https://github.com/KiboMibo/glide"

  # Both install Glide.app.
  conflicts_with cask: "glide"

  app "Glide.app"
  binary "#{appdir}/Glide.app/Contents/MacOS/glide"

  # The app is ad-hoc signed, not notarized: without this Gatekeeper refuses
  # the first launch with "Apple could not verify...".
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Glide.app"]
  end

  uninstall quit: "org.glidewm.glide"

  zap trash: [
    "~/.config/glide",
    "~/.glide",
    "~/.glide.toml",
  ]
end
