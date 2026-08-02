class Sshmon < Formula
  desc "TUI monitoring of Linux servers over SSH without agents"
  homepage "https://github.com/KiboMibo/sshmon"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.2/sshmon_v0.5.2_darwin_arm64.tar.gz"
      sha256 "e41a1934cfaf7289812fb21eee2912214710488ddc8e949e060c9af2c3e29731"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.2/sshmon_v0.5.2_darwin_amd64.tar.gz"
      sha256 "79d748c9b8dd3d7dc0b25bbb1974ac118d611195a916ef082488dcbf8d14b0e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.2/sshmon_v0.5.2_linux_arm64.tar.gz"
      sha256 "1cc755856678a397693ecba4c39d2ccfa0e09e0599aea319900f336281336cf0"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.2/sshmon_v0.5.2_linux_amd64.tar.gz"
      sha256 "49ee2ea819dc3c462c873ce0257b71fff7a81afe8afd2b7bee675fb12f8204b3"
    end
  end

  def install
    bin.install "sshmon"
  end

  test do
    assert_equal "sshmon 0.5.2", shell_output("#{bin}/sshmon --version").strip
  end
end
