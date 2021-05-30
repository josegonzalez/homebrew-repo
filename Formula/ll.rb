class Ll < Formula
  desc "Better ls output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/ll"
  sha256 "f122a72b78eb3759d1b4fea08cec4aac8981b98794769c9ed1d402bb98fb6e37"
  version "1.0.0"

  def install
    bin.install "ll"
  end

  test do
    system bin/"ll"
  end
end
