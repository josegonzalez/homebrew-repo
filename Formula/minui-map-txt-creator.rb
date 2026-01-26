class MinuiMapTxtCreator < Formula
  desc "Generate MinUI mapping files from FinalBurn Neo dat XML files"
  homepage "https://github.com/josegonzalez/minui-map-txt-creator"
  license "MIT"
  version "0.2.0"

  on_arm do
    url "https://github.com/josegonzalez/minui-map-txt-creator/releases/download/0.2.0/minui-map-txt-creator-darwin-arm64"
    sha256 "7946bce055404bb19f2dc95b013a614eecfe31c6c68aad6e1d2aed5d5c6bd21f"
  end

  on_intel do
    url "https://github.com/josegonzalez/minui-map-txt-creator/releases/download/0.2.0/minui-map-txt-creator-darwin-amd64"
    sha256 "7abad13fcee17bea70334e24003f242e4544fc41445c8616bc5d377a291f249d"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "minui-map-txt-creator-darwin-arm64" => "minui-map-txt-creator"
    else
      bin.install "minui-map-txt-creator-darwin-amd64" => "minui-map-txt-creator"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minui-map-txt-creator --version")
  end
end
