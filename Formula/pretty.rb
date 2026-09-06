# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Pretty < Formula
  desc "Fastest terminal emulator on Earth, the neutral brand (KiboMibo fork)"
  homepage "https://github.com/KiboMibo/shitty"
  version "15"
  url "https://github.com/KiboMibo/shitty/releases/download/15/pt-darwin-arm64.tar.gz"
  sha256 "a83b7a97e65ccfc205d04e5163c9d962cc0a08d3218a61e14bcafc1bedf6bbad"
  license any_of: ["MIT", "GPL-3.0-or-later"]

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pt"
  end

  test do
    assert_match "Pretty", shell_output("#{bin}/pt -version")
  end
end
