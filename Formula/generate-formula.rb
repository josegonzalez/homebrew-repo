class GenerateFormula < Formula
  desc "Generates a formula file for the given command"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/146920bcd0fbbe8a37f94c49e15d3a38fe7e9320/bin/generate-formula"
  sha256 "ae87bb9392668511e52fad681120d8669825c3f100c67e20f980002d1e691035"
  version "0.0.1"

  def install
    bin.install "generate-formula"
  end

  test do
    system bin/"generate-formula"
  end
end
