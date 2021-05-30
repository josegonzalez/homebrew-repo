class Mssh < Formula
  desc "Wraps virtualenv mssh so that it is easier to use for ubuntu servers"
  homepage "http://josediazgonzalez.com"
  url "https://raw.githubusercontent.com/josegonzalez/homebrew-repo/3a77e917f1d77c834feea041167f4e85959fc00a/bin/mssh"
  sha256 "e40fe733af17b6c622b4e6c717b8b58bf21563e50160aec94ee42db0f278530a"
  version "1.0.0"

  def install
    bin.install "mssh"
  end

  test do
    system bin/"mssh"
  end
end
