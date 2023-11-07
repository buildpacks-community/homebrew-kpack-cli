class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/buildpacks-community/kpack-cli"
  version "0.12.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.1/kp-darwin-amd64-0.12.1"
      sha256 "781691da62f5e12b32cec62b952554d9602bcef169bb2c531a684c77fb940908"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.1/kp-darwin-arm64-0.12.1"
      sha256 "87370a7ea0311db8fb8bcd17a7bdfc1af94b6ec2d90f48d103807a557e4d653e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.1/kp-linux-amd64-0.12.1"
      sha256 "7f82ac81c5b792334ee5e8ef13f65a6e88597afe852277bafe4ce693f2a14173"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.12.1/kp-linux-arm64-0.12.1"
      sha256 "25d0fbd940258736bbea498a779d8bf72aaac40ed8617ebf3a8300a372796d66"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end
