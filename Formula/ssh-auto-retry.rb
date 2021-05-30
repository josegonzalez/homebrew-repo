class SshAutoRetry < Formula
  desc "Auto retries connecting to a server until it is ready"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/ssh-auto-retry"
  sha256 "6751411b74f67f4565acf3da089f59480eb8074cbf907a1446d9905eabfd0a5d"
  version "1.0.0"

  def install
    bin.install "ssh-auto-retry"
  end

  test do
    system bin/"ssh-auto-retry"
  end
end
