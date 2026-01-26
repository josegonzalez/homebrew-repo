class Venv < Formula
  desc "Creates a virtualenv and installs dependencies in requirements.txt"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/venv"
  sha256 "f0f61e4ce6d601a25af76c2635c8f7290bbbd1e7e338c58051087f16ae6431d8"
  version "1.0.0"

  def install
    bin.install "venv"
  end

  test do
    system bin/"venv"
  end
end
