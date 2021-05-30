class AutoRetry < Formula
  desc "Automatically retries - with exponential backoff - a given command until it exits 0"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/51ecea74196712d205ca516180fa2179a982bcbc/bin/auto-retry"
  sha256 "7492c16ee02ef64d6856e633a141cd9a9687ecd6641495cca54470eba825dfe4"
  version "0.1.0"

  def install
    bin.install "auto-retry"
  end

  test do
    system bin/"auto-retry"
  end
end
