  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac? 
    if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit? 
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.0/kp-darwin-amd64-0.9.0"
      sha256 "0ba10edb3a360e51dde3d3120251af79927bef7834129cdb5f0f036b6d0b75d6"
    else
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.0/kp-darwin-arm64-0.9.0"
      sha256 "68e2ec649b6e0fc1c45747c1f418d478572df6c612b497f7b4204cb6e690be8d"
    end  
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.0/kp-linux-amd64-0.9.0"
    sha256 "4853dac14686cf5d498fd226bcd0167d7a594cd9e0ce3a0092e307329215f850"
  end

  on_linux do
    depends_on arch: :x86_64
  end
  
  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

