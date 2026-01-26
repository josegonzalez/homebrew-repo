class Untar < Formula
  desc "Untars a file"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/untar"
  sha256 "cbd90313eef1527501e2790bdde6e636f4723228694522dfdb1f858c4a459644"
  version "1.0.0"

  def install
    bin.install "untar"
  end

  test do
    system bin/"untar"
  end
end
