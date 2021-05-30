class AutoRetry < Formula
  desc "Automatically retries - with exponential backoff - a given command until it exits 0"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/main/bin/auto-retry"
  sha256 "45f476a147d8d127a4ca28a7071e581d4ce140eb062ccd108046a58e94a6e7ab"
  version "0.1.0"

  def install
    bin.install "auto-retry"
  end

  test do
    system bin/"auto-retry"
  end
end
