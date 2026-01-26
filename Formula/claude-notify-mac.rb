class ClaudeNotifyMac < Formula
  desc "Displays notifications for Claude Code via AppleScript"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/claude-notify-mac"
  sha256 "2ca65668d1d0152c6cf840f9b74a40bd5b09a69459dd1261e7891106b12a1836"
  version "1.0.0"

  def install
    bin.install "claude-notify-mac"
  end

  test do
    system bin/"claude-notify-mac"
  end
end
