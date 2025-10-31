class Sm < Formula
  desc "Simple secret management tool for server configuration"
  homepage "https://github.com/josegonzalez/sm"
  url "https://github.com/josegonzalez/sm/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "158d6e872cb7e927616792393d8ef870fdf76b629986741b43e4de04c91166db"
  license "MIT"
  head "https://github.com/josegonzalez/sm.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.Version=#{version}"
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    true
  end
end
