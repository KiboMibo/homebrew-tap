# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/17/st-darwin-arm64.tar.gz"
  version "17"
  sha256 "ad856d5242d78c4c5a691c2cfe97e5e0bbc52cd0a217f98dabd3d1634d12d783"
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
