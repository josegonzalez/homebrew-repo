class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.6.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.6.0/safeclaw_0.6.0_darwin_arm64.tar.gz"
    sha256 "c7d5c683355fe0450614f4314df398e2009e1a808ddfb47458d7e88e4eb3173f"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.6.0/safeclaw_0.6.0_darwin_amd64.tar.gz"
    sha256 "a5e8a28b4e1b5ac955bc79ff8907eb51c9eae06072b112f3bdeea14e50c0cdbe"
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
