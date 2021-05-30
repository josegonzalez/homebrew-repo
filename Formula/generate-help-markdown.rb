class GenerateHelpMarkdown < Formula
  desc "Uses reflection on scripts to show computed help output"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/main/bin/generate-help-markdown"

  def install
    bin.install "generate-help-markdown"
  end

  test do
    system bin/"generate-help-markdown"
  end
end
