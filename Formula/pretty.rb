# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Pretty < Formula
  desc "Fastest terminal emulator on Earth, the neutral brand (KiboMibo fork)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/16/pt-darwin-arm64.tar.gz"
  version "16"
  sha256 "e85b29adabf14d1f9c8acbdd390a260e3e8babb2616b6381e816c0642c21f20b"
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
