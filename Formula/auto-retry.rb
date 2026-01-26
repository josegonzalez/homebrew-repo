class AutoRetry < Formula
  desc "Automatically retries - with exponential backoff - a given command until it exits 0"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/auto-retry"
  sha256 "4094b029612bef01f608dfce824e09278e0e8a3cf191a18bb220df6d26175471"
  version "1.0.0"

  def install
    bin.install "auto-retry"
  end

  test do
    system bin/"auto-retry"
  end
end
