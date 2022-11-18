  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.8.0/kp-darwin-amd64-0.8.0"
    sha256 "9b8177adb6198545140f07cd37bb20b39d5afdd32f48ad839b76e4855a42ad3a"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.8.0/kp-linux-amd64-0.8.0"
    sha256 "7b5f637b52540f55d42d12248547816f0d5c0fe4b815c7773a9ee710ae9ce68d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

