class GenerateFormula < Formula
  desc "Generates a formula file for the given command"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/generate-formula"
  sha256 "31c91338cf0477a00177f1f57212f97f8955485f45d50ea68311808e394cff01"
  version "0.0.2"

  def install
    bin.install "generate-formula"
  end

  test do
    system bin/"generate-formula"
  end
end
