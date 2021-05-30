class AutoRetry < Formula
  desc "Automatically retries - with exponential backoff - a given command until it exits 0"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/ab71713d4da602f98470cb0e10bc59a21a88d8a0/bin/auto-retry"
  sha256 "8a3546eddec7d001f6419cf875a9bcc3f526ba1805f18500f250c375bdd92a69"
  version "1.0.0"

  def install
    bin.install "auto-retry"
  end

  test do
    system bin/"auto-retry"
  end
end
