# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/18/st-darwin-arm64.tar.gz"
  version "18"
  sha256 "af882eb77d8865e15da73d62f6a03193e5503c87d258d0fde0d099610a1a8254"
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
