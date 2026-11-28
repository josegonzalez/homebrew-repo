class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.3.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.3.0/safeclaw_0.3.0_darwin_arm64.tar.gz"
    sha256 "a1d5e327b64d425d6ba5f6a1fe31da812f68bf53c6cac3ce6488332fa99b0075"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.3.0/safeclaw_0.3.0_darwin_amd64.tar.gz"
    sha256 "d16cdbe0cee38ad61c2f256f80205141300aeab1d088876cf400b041bd316d39"
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
