class GenerateHelpMarkdown < Formula
  desc "Uses reflection on scripts to show computed help output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/generate-help-markdown"
  sha256 "f11c29a3d0458bd487b71a37366aac97ff50f88a8910da2d6504398dfbe3721d"
  version "0.1.0"

  def install
    bin.install "generate-help-markdown"
  end

  test do
    system bin/"generate-help-markdown"
  end
end
