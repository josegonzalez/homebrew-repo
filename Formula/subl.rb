class Subl < Formula
  desc "Auto-opens .sublime-project files if they exist"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/subl"
  sha256 "c6325f2960b461925d316c55f9d7ee7e3ba225e17ef9af23ae8f4b2e8676ba2c"
  version "1.0.0"

  def install
    bin.install "subl"
  end

  test do
    system bin/"subl"
  end
end
