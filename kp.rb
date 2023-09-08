class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/buildpacks-community/kpack-cli"
  version "0.12.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.0/kp-darwin-amd64-0.12.0"
      sha256 "fe398d4b239259d6f3db80f563993bfddee120cd0d370b234d25954f56fe2440"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.0/kp-darwin-arm64-0.12.0"
      sha256 "8e03b146abb2598d4863deae8f5e51ed1f54f15e0d59903d6f05973f15a12052"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.0/kp-linux-amd64-0.12.0"
      sha256 "b3a235f5aee19b26551249f095dfd2e0194497e24bb85f38106a24aef95dc3fb"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.0/kp-linux-arm64-0.12.0"
      sha256 "46cdec0ee95aaeb553a0ba7204876461d4aa2a70e07a4361934ab45ed43324d6"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end
