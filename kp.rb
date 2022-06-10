  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.6.0/kp-darwin-0.6.0"
    sha256 "405e2e40a2c06a6cbdb367888f54532e5fb55edffc40ec83846badafd0bcd9b8"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.6.0/kp-linux-0.6.0"
    sha256 "090395d282bf691a6efc4499649f705e5c29a28d4cd4a3893663f87d5eef9a05"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

