  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.2/kp-darwin-0.4.2"
    sha256 "55f3b98a85946d4593e0b07bcd3cf80230d3d8d0d42670608bca02ed1082d23b"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.4.2/kp-linux-0.4.2"
    sha256 "744ecd3acdc1190932bfcdeb8a5443e18585e3ccd19fbb8dae515c53c6e77d84"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

