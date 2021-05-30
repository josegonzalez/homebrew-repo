class GenerateFormula < Formula
  desc "Generates a formula file for the given command"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/generate-formula"
  sha256 "42e4b3e1cd81ca90b310ec501531bfbf975711ce3b6c9d42d77b9e51248f1a5c"
  version "0.0.1"

  def install
    bin.install "generate-formula"
  end

  test do
    system bin/"generate-formula"
  end
end
