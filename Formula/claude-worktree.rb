class ClaudeWorktree < Formula
  desc "CLI tool for managing git worktrees with Claude Code integration"
  homepage "https://github.com/josegonzalez/claude-worktree"
  url "https://github.com/josegonzalez/claude-worktree/archive/refs/tags/0.1.0.tar.gz"
  sha256 "b3155f36b1f429252dfa0ee69586eec94ea6ed293a9f82557992b2bfa80ff82c"
  license "MIT"
  head "https://github.com/josegonzalez/claude-worktree.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-worktree --version")
  end
end
