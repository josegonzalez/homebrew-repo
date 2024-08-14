class Sm < Formula
  desc "Simple secret management tool for server configuration"
  homepage "https://github.com/josegonzalez/sm"
  url "https://github.com/josegonzalez/sm/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "7146b8cf14b4e031ef763d8007c00df201f9ef9667b985ebbe3c71fdb5112abb"
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
