class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.7.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.7.0/safeclaw_0.7.0_darwin_arm64.tar.gz"
    sha256 "cabed58d766b74ff2c93adb7c557dedbdffd6442bdaf33a0c75da2babb7127d0"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.7.0/safeclaw_0.7.0_darwin_amd64.tar.gz"
    sha256 "68e77b1638a61fb8606df0170929ff0b26cccc578222160852894afb78a9f115"
  end

  def install
    bin.install "safeclaw"
    bash_completion.install "completions/safeclaw.bash" => "safeclaw"
    zsh_completion.install "completions/safeclaw.zsh" => "_safeclaw"
    fish_completion.install "completions/safeclaw.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safeclaw version")
  end
end
