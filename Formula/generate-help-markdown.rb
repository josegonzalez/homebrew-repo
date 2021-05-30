class GenerateHelpMarkdown < Formula
  desc "Uses reflection on scripts to show computed help output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/main/bin/generate-help-markdown"
  sha256 "6cfc349fd9540fd4d106ee68a572536a10295da0445f86e68995a9659815f0e8"

  def install
    bin.install "generate-help-markdown"
  end

  test do
    system bin/"generate-help-markdown"
  end
end
