  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.0/kp-darwin-0.4.0"
    sha256 "9dafd60f41ac7f41e0f2ff19e6a71c7f0a9b8f3114774ae5c0857717fcd8d2e4"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.0/kp-linux-0.4.0"
    sha256 "ec0bb0da97caaf8bd7a0af95eea28eed41329d2d038013474e7c5b3ec059403c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

