class Subl < Formula
  desc "Auto-opens .sublime-project files if they exist"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/subl"
  sha256 "62ceb000ffddb97afe3a9ce841f939508c60c1ea1c451ea71f11afa1abf39bbe"
  version "1.0.2"

  def install
    bin.install "subl"
  end

  test do
    system bin/"subl"
  end
end
