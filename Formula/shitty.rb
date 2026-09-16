# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/16/st-darwin-arm64.tar.gz"
  version "16"
  sha256 "a11663ae93945afa3a7771e701d808597a74b2e650ef981d7b55c75bc04541fe"
  license any_of: ["MIT", "GPL-3.0-or-later"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "st"
  end

  test do
    assert_match "Shitty", shell_output("#{bin}/st -version")
  end
end
