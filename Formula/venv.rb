class Venv < Formula
  desc "Creates a virtualenv and installs dependencies in requirements.txt"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/venv"
  sha256 "f0f61e4ce6d601a25af76c2635c8f7290bbbd1e7e338c58051087f16ae6431d8"
  version "1.0.0"

  def install
    bin.install "venv"
  end

  test do
    system bin/"venv"
  end
end
