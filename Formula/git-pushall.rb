class GitPushall < Formula
  desc "Pushes all branches beginning with the current year"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/git-pushall"
  sha256 "2eef15d24fddf87191f84452ee61fa96056ce4a48ef9535615f1ea994419473b"
  version "1.0.0"

  def install
    bin.install "git-pushall"
  end

  test do
    system bin/"git-pushall"
  end
end
