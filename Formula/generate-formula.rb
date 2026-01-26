class GenerateFormula < Formula
  desc "Generates a formula file for the given command"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/generate-formula"
  sha256 "07d3198d6eb8151cbce7d5ae5c780b44d6a70f6d8bb6eddb95fd70c198accb6d"
  version "0.0.2"

  def install
    bin.install "generate-formula"
  end

  test do
    system bin/"generate-formula"
  end
end
