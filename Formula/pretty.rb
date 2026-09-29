# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Pretty < Formula
  desc "Fastest terminal emulator on Earth, the neutral brand (KiboMibo fork)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/17/pt-darwin-arm64.tar.gz"
  version "17"
  sha256 "7619e5a053f68fa5e495373a235a3ef35457856ec537f8c6a63062d41a41a99c"
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
