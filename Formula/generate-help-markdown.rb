class GenerateHelpMarkdown < Formula
  desc "Uses reflection on scripts to show computed help output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/generate-help-markdown"
  sha256 "cf0fa553c132a4c49057577891d98780789fee5f70d637fc6a69cccae707db2a"
  version "0.1.0"

  def install
    bin.install "generate-help-markdown"
  end

  test do
    system bin/"generate-help-markdown"
  end
end
