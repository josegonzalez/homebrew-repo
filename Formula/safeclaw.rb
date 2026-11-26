class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.1.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.1.0/safeclaw_0.1.0_darwin_arm64.tar.gz"
    sha256 "164f7e649402dcfb63c6ee481299f4a7659f7e7e1da92881478527825c171bd2"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.1.0/safeclaw_0.1.0_darwin_amd64.tar.gz"
    sha256 "ee05577d13ee10c6666e7112eb9683335cabc32715a28f18234d4479a37d0d79"
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
