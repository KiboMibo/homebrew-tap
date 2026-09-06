# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  version "15"
  url "https://github.com/KiboMibo/shitty/releases/download/15/st-darwin-arm64.tar.gz"
  sha256 "2fc9fce05816940ebfa4ccaca6b9047a37fb4ea0a08714678bc70f04bbc8e14f"
  license any_of: ["MIT", "GPL-3.0-or-later"]

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "st"
  end

  test do
    assert_match "Shitty", shell_output("#{bin}/st -version")
  end
end
