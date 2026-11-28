class Safeclaw < Formula
  desc "Run Claude Code sessions in isolated Docker containers with a web dashboard"
  homepage "https://github.com/josegonzalez/safeclaw"
  license "MIT"
  version "0.4.0"

  on_arm do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.4.0/safeclaw_0.4.0_darwin_arm64.tar.gz"
    sha256 "c7756f95f84ed0aa6e91dc880ac2549d23a3d4108c26fa53cc06615cc46e1535"
  end

  on_intel do
    url "https://github.com/josegonzalez/safeclaw/releases/download/v0.4.0/safeclaw_0.4.0_darwin_amd64.tar.gz"
    sha256 "f2322929105f59c575d594f75bc6cc9964412882d3c1148e19a185ddbcef9cef"
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
