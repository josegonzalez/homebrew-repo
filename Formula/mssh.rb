class Mssh < Formula
  desc "Wraps virtualenv mssh so that it is easier to use for ubuntu servers"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/1c11f96f170cdfc549d94da4000fe82fb0b6bd96/bin/mssh"
  sha256 "e40fe733af17b6c622b4e6c717b8b58bf21563e50160aec94ee42db0f278530a"
  version "1.0.0"

  def install
    bin.install "mssh"
  end

  test do
    system bin/"mssh"
  end
end
