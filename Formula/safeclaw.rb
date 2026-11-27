class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.2.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.2.0/safeclaw_0.2.0_darwin_arm64.tar.gz"
    sha256 "ac28e812651e096aac3860f75d03c1077cfdbf6cba8838c2f820f8ec08b6f9e5"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.2.0/safeclaw_0.2.0_darwin_amd64.tar.gz"
    sha256 "3870bae500276947ab06d19603539bc7dde7fde44e8b50f0efeca0535e3ad8c0"
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
