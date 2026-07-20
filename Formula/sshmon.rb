class Sshmon < Formula
  desc "TUI monitoring of Linux servers over SSH without agents"
  homepage "https://github.com/KiboMibo/sshmon"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.3.0/sshmon_v0.3.0_darwin_arm64.tar.gz"
      sha256 "5f6e646b35ca87d38994920c6e178104ecfe36c4221f3a40b452b3fca592a362"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.3.0/sshmon_v0.3.0_darwin_amd64.tar.gz"
      sha256 "a510d200a63f40ed140d58e9c028a25f651ae503fe60b83b7832946049a6fc9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.3.0/sshmon_v0.3.0_linux_arm64.tar.gz"
      sha256 "3240089152e478142ecad38a691992e144f83f25febcd8909b73c8c174cc9e41"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.3.0/sshmon_v0.3.0_linux_amd64.tar.gz"
      sha256 "40b45124b33c19ec0fb168385f9f06266490343438cfc60adc80e3d51c022a2b"
    end
  end

  def install
    bin.install "sshmon"
  end

  test do
    assert_equal "sshmon 0.3.0", shell_output("#{bin}/sshmon --version").strip
  end
end
