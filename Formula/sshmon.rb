class Sshmon < Formula
  desc "TUI monitoring of Linux servers over SSH without agents"
  homepage "https://github.com/KiboMibo/sshmon"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.0/sshmon_v0.5.0_darwin_arm64.tar.gz"
      sha256 "308dfe16ca87c7244ee32a588798a97b58b5fdafe01e2c060990ad0943fbdae3"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.0/sshmon_v0.5.0_darwin_amd64.tar.gz"
      sha256 "313aca1980aef3eccda86328ec8b2bb995068f63fd76f9d45b8f2e8ca3c7b1b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.0/sshmon_v0.5.0_linux_arm64.tar.gz"
      sha256 "d0758a941ade970bc15af65f1ae221b04800d231c6fb81f276db999a306bded0"
    end

    on_intel do
      url "https://github.com/KiboMibo/sshmon/releases/download/v0.5.0/sshmon_v0.5.0_linux_amd64.tar.gz"
      sha256 "1b0b6f5a4ea06974fbb2cb4b9e996be80f22da4239e5205e6d9819b221c56f6c"
    end
  end

  def install
    bin.install "sshmon"
  end

  test do
    assert_equal "sshmon 0.5.0", shell_output("#{bin}/sshmon --version").strip
  end
end
