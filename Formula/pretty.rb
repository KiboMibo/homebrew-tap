# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Pretty < Formula
  desc "Fastest terminal emulator on Earth, the neutral brand (KiboMibo fork)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/19/pt-darwin-arm64.tar.gz"
  version "19"
  sha256 "4b6811e3e1cb54d60f252585d0040aebc1fde452fa5ebc6027cc8739f6ede67c"
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
