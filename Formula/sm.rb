class Sm < Formula
  desc "Simple secret management tool for server configuration"
  homepage "https://github.com/josegonzalez/sm"
  url "https://github.com/josegonzalez/sm/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "405c069b016f9fcc99b3cdcd2eda0054098d8180da2a6d562adf1a0bdb49143e"
  license "MIT"
  head "https://github.com/josegonzalez/sm.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/josegonzalez/sm/main.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    true
  end
end
