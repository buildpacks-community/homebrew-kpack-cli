  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.5.0/kp-darwin-0.5.0"
    sha256 "633b7e93b0d76714058a861c926c0c3592de686fa0054fb45f91e972e7e0d1bf"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.5.0/kp-linux-0.5.0"
    sha256 "67168c5bbdb278e6e63a0f174e42bd87c92ffb203931e18a5daeed24c14e0899"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

