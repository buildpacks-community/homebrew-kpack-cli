  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.6.1/kp-darwin-0.6.1"
    sha256 "2ecb3fd58a8daf99dc29201f4bf22f8d3d5ed8297ae7357f70a5321752618f0d"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.6.1/kp-linux-0.6.1"
    sha256 "7bbc60f0aa7427f5efe166e1123ee16e1c9be800fa24a6e0b724306e2462c9eb"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

