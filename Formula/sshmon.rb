class Sshmon < Formula
  desc "TUI monitoring of Linux servers over SSH without agents"
  homepage "https://github.com/KiboMibo/sshmon"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.4.2/sshmon_v0.4.2_darwin_arm64.tar.gz"
      sha256 "39ee3c9b30ec959360d218bd87586632269fc4eaa62d28122f01303390a0cf5b"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.4.2/sshmon_v0.4.2_darwin_amd64.tar.gz"
      sha256 "96390df64b435732f3f0ea814c487c06f6d4070b3cb8a9c470bfd443bebc0880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.4.2/sshmon_v0.4.2_linux_arm64.tar.gz"
      sha256 "2df30e057d50846b4fa6256e29013ae5c7dccb788a6a59d8013b5aaa476c6014"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.4.2/sshmon_v0.4.2_linux_amd64.tar.gz"
      sha256 "fb8b371173b1d662c8c045201bab5b840afcd2fcbaaff496646d796d26ffb947"
    end
  end

  def install
    bin.install "sshmon"
  end

  test do
    assert_equal "sshmon 0.4.2", shell_output("#{bin}/sshmon --version").strip
  end
end
