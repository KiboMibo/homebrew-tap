# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Pretty < Formula
  desc "Fastest terminal emulator on Earth, the neutral brand (KiboMibo fork)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/18/pt-darwin-arm64.tar.gz"
  version "18"
  sha256 "a590028253e1a1432c42a9dd7c2ba48e344be7002d42f9c36cc2c986d29c1a9b"
  license any_of: ["MIT", "GPL-3.0-or-later"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pt"
  end

  test do
    assert_match "Pretty", shell_output("#{bin}/pt -version")
  end
end
