class AvahiRegister < Formula
  desc "Register services with Avahi/Bonjour for network discovery"
  homepage "https://github.com/josegonzalez/go-avahi-register"
  license "MIT"
  version "0.4.0"

  on_arm do
    url "https://github.com/josegonzalez/go-avahi-register/releases/download/v0.4.0/avahi-register_0.4.0_darwin_arm64.tgz"
    sha256 "a774dd66b46bb988db2da5e2ba96c7d977145ed718ccb3523dce6e03a8a9846f"
  end

  on_intel do
    url "https://github.com/josegonzalez/go-avahi-register/releases/download/v0.4.0/avahi-register_0.4.0_darwin_amd64.tgz"
    sha256 "5e4c975b7b71b03050d8bae00df195ba26f0d468a0fd1d81e6df829923cd9657"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "avahi-register-arm64" => "avahi-register"
    else
      bin.install "avahi-register-amd64" => "avahi-register"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avahi-register --version")
  end
end
