  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.1/kp-darwin-amd64-0.9.1"
      sha256 "64abbec5d4a0f5763b604a3e80cd4210721983a6ff3ddbce5cff0a2edbb4e0b3"
    elsif Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.1/kp-darwin-arm64-0.9.1"
      sha256 "224d8c95d8f8fb4ed950aec831d3c8dae2f404e3ce4dbf3b4378b1f7585f70ba"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.1/kp-linux-amd64-0.9.1"
      sha256 "175d0818ed83e7d84f169dd74c26531d328cc0971937f2158a3adfefbcf57fdb"
    elsif Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.9.1/kp-linux-arm64-0.9.1"
      sha256 "bc3034177cbf8a02e26ca0aa12d521efb5fb830d856448e9bfbb34992548fce6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

