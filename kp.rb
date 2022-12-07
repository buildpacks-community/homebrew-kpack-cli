  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.0/kp-darwin-amd64-0.9.0"
    sha256 "0ba10edb3a360e51dde3d3120251af79927bef7834129cdb5f0f036b6d0b75d6"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.0/kp-linux-amd64-0.9.0"
    sha256 "4853dac14686cf5d498fd226bcd0167d7a594cd9e0ce3a0092e307329215f850"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

