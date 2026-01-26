class SshdConfig < Formula
  desc "CLI tool for manipulating SSH daemon configuration files"
  homepage "https://github.com/josegonzalez/sshd-config"
  license "BSD-3-Clause"
  version "0.9.1"

  on_arm do
    url "https://github.com/josegonzalez/sshd-config/releases/download/v0.9.1/sshd-config_0.9.1_darwin_arm64.tgz"
    sha256 "1e0b6f6d85f43a3a3c88a06d6d2cd2bee8bfd58bc79aa86f6c216524b533619b"
  end

  on_intel do
    url "https://github.com/josegonzalez/sshd-config/releases/download/v0.9.1/sshd-config_0.9.1_darwin_amd64.tgz"
    sha256 "b9c07f9e5d708d195e04a22345e3e92b53ce89ab65be7e237d67b8cdc499d6ff"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "sshd-config-arm64" => "sshd-config"
    else
      bin.install "sshd-config-amd64" => "sshd-config"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshd-config --version")
  end
end
