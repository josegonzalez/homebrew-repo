class Subl < Formula
  desc "Auto-opens .sublime-project files if they exist"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/7e284108f3168d8af62257374380e67f1b8d7d9d/bin/subl"
  sha256 "851d073cd3469b74cfe0751bf613bf4012d3bc6523d7805909ef6c14beb4746d"
  version "1.0.1"

  def install
    bin.install "subl"
  end

  test do
    system bin/"subl"
  end
end
