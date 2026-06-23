class DockerRunExport < Formula
  desc "Export docker run flags to various formats"
  homepage "https://github.com/dokku/docker-run-export"
  license "MIT"
  version "0.5.0"

  on_arm do
    url "https://github.com/dokku/docker-run-export/releases/download/v0.5.0/docker-run-export-darwin-arm64"
    sha256 "716fd67c31c019a167c2316b5019c57b5d5718014859f96d95f55043a4765db0"
  end

  on_intel do
    url "https://github.com/dokku/docker-run-export/releases/download/v0.5.0/docker-run-export-darwin-amd64"
    sha256 "26673500135dbabffa438d462d51258a273ba796c110712390eb5a57c10f8f81"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "docker-run-export-darwin-arm64" => "docker-run-export"
    else
      bin.install "docker-run-export-darwin-amd64" => "docker-run-export"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/docker-run-export --version")
  end
end
