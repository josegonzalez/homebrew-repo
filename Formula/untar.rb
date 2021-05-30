class Untar < Formula
  desc "Untars a file"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/untar"
  sha256 "cbd90313eef1527501e2790bdde6e636f4723228694522dfdb1f858c4a459644"
  version "1.0.0"

  def install
    bin.install "untar"
  end

  test do
    system bin/"untar"
  end
end
