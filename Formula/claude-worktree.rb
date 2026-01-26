class ClaudeWorktree < Formula
  desc "CLI tool for managing git worktrees with Claude Code integration"
  homepage "https://github.com/josegonzalez/claude-worktree"
  license "MIT"
  version "0.1.0"

  on_arm do
    url "https://github.com/josegonzalez/claude-worktree/releases/download/0.1.0/claude-worktree-darwin-arm64"
    sha256 "c2e6c0d67d74a40c9b17554cc09fe1c2cb31edbba6bbbc864d1686cb857ea071"
  end

  on_intel do
    url "https://github.com/josegonzalez/claude-worktree/releases/download/0.1.0/claude-worktree-darwin-amd64"
    sha256 "78121f5a0ae5e83db545297cb96250393357a88fd6290737078e6dc038bce751"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "claude-worktree-darwin-arm64" => "claude-worktree"
    else
      bin.install "claude-worktree-darwin-amd64" => "claude-worktree"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-worktree --version")
  end
end
