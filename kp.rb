  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.7.1/kp-darwin-amd64-0.7.1"
    sha256 "10574661005782f759e2e8b9aaad39ed08f7cd5ed031c5734130f83b57537f3d"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.7.1/kp-linux-amd64-0.7.1"
    sha256 "e0f14ecc390e6ec44fcadf898f81c0c2a6a9249edc5d04922dea23e7b4b04647"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

