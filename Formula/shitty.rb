# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/20/st-darwin-arm64.tar.gz"
  version "20"
  sha256 "b9f76b5b817c5d21ca296756968de0233d837ccd73d458163b76de064dd3e8bb"
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
