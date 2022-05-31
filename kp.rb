  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.5.0/kp-darwin-0.5.0"
    sha256 "6ecabfda6312b08d5685e336da891fe2ad75940c75da0da397f32d69025aee2a"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.5.0/kp-linux-0.5.0"
    sha256 "0243a921ce14ea54a56c504c1b65c81961a1ce8274ff748af5373a5cf6a6216c"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

