class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.5.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.5.0/safeclaw_0.5.0_darwin_arm64.tar.gz"
    sha256 "8ab652189d5672f59d4248df3e7da29e88251b8671414a6816304d5ba3a93697"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.5.0/safeclaw_0.5.0_darwin_amd64.tar.gz"
    sha256 "2a1cb9e36b0331b964ccb603f7d170199f75773735900fa2b5dda7f5e3eec69f"
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
