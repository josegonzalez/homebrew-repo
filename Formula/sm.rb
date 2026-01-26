class Sm < Formula
  desc "Simple secret management tool for server configuration"
  homepage "https://github.com/josegonzalez/sm"
  license "MIT"
  version "0.16.0"

  on_arm do
    url "https://github.com/josegonzalez/sm/releases/download/v0.16.0/sm_0.16.0_darwin_arm64.tgz"
    sha256 "48caeb318b9fa8c7c3d89f92cab90d805ddb3b9bc207c08126e5ce9aa7ae2152"
  end

  on_intel do
    url "https://github.com/josegonzalez/sm/releases/download/v0.16.0/sm_0.16.0_darwin_amd64.tgz"
    sha256 "eccfd3beafd625abef0494fb60520949b5aa2bb071e8a1e2846ddd231ada8454"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "sm-arm64" => "sm"
    else
      bin.install "sm-amd64" => "sm"
    end
  end

  test do
    true
  end
end
