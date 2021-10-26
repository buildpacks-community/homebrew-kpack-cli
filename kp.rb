  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.1/kp-darwin-0.4.1"
    sha256 "d7d4be3191c7aa1c6a2c8f202b0296785bf5954ad14a3f96c6f58452d96a302d"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.1/kp-linux-0.4.1"
    sha256 "c1a2f9443a66ebc4c926de25829019ce8ffa1462a2f652d3aed45f9d0160abec"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

