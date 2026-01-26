class ClaudeNotifyMac < Formula
  desc "Displays notifications for Claude Code via AppleScript"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/7e1e14875ea6792afcbc2cb728e34d59c74e4b37/bin/claude-notify-mac"
  sha256 "2ca65668d1d0152c6cf840f9b74a40bd5b09a69459dd1261e7891106b12a1836"
  version "1.0.0"

  def install
    bin.install "claude-notify-mac"
  end

  test do
    system bin/"claude-notify-mac"
  end
end
