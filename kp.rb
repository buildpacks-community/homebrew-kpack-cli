class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.3.1/kp-darwin-0.3.1"
    sha256 "02cf3c10249bcd145f46b506d111d93334388c78d09defb71d1cbde875878b1d"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.3.1/kp-linux-0.3.1"
    sha256 "8fd058c563cadd46200a0985182fa393111261da185ec46f98bf600cdf68079d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end