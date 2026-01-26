class Ll < Formula
  desc "Better ls output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/ll"
  sha256 "f122a72b78eb3759d1b4fea08cec4aac8981b98794769c9ed1d402bb98fb6e37"
  version "1.0.0"

  def install
    bin.install "ll"
  end

  test do
    system bin/"ll"
  end
end
