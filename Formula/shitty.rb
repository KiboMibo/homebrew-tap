# Prebuilt binary from the KiboMibo/shitty fork; bump version/url/sha256 per release.
class Shitty < Formula
  desc "Fastest terminal emulator on Earth (KiboMibo fork: glass, sidebar, panes)"
  homepage "https://github.com/KiboMibo/shitty"
  url "https://github.com/KiboMibo/shitty/releases/download/19/st-darwin-arm64.tar.gz"
  version "19"
  sha256 "3139460b3ee36a08e4159864b9b58d51b9dc0cf1f93698dfd3e8e46cd47c7978"
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
