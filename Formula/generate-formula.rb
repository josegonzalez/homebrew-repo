class GenerateFormula < Formula
  desc "Generates a formula file for the given command"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/e0e5f7f75bae7c05e6ee2c4ef97d1aeb24bd71a1/bin/generate-formula"
  sha256 "07d3198d6eb8151cbce7d5ae5c780b44d6a70f6d8bb6eddb95fd70c198accb6d"
  version "0.0.2"

  def install
    bin.install "generate-formula"
  end

  test do
    system bin/"generate-formula"
  end
end
