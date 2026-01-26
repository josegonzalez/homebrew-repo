class GitDeleteUseless < Formula
  desc "Delete all branches other than main, master, and release"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/git-delete-useless"
  sha256 "5f6ce3e6c30878276e4b56426f5a6b8a1ba747bff2728f87148c65cbfd0394a3"
  version "1.0.0"

  def install
    bin.install "git-delete-useless"
  end

  test do
    system bin/"git-delete-useless"
  end
end
