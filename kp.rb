  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.11.0/kp-darwin-amd64-0.11.0"
      sha256 "30c3b47fcf855135b691f83c8b5758ead8885cc6382727448f913d1a7a70a956"
    elsif Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.11.0/kp-darwin-arm64-0.11.0"
      sha256 "2e1fba1e071928bd930b2e79ddf4d354809bad8a8b42151ec555ed663b011f70"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.11.0/kp-linux-amd64-0.11.0"
      sha256 "027390cd13b6f68ad30bef7817213c1f25a2dd52fef99926e5e5cf8cbcad8ade"
    elsif Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.11.0/kp-linux-arm64-0.11.0"
      sha256 "710f072220005704d8cb4fb04bc9c229b14e30d30bbab3ae439a39056412b94d"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

