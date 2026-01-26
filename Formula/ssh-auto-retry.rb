class SshAutoRetry < Formula
  desc "Auto retries connecting to a server until it is ready"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/ssh-auto-retry"
  sha256 "6751411b74f67f4565acf3da089f59480eb8074cbf907a1446d9905eabfd0a5d"
  version "1.0.0"

  def install
    bin.install "ssh-auto-retry"
  end

  test do
    system bin/"ssh-auto-retry"
  end
end
