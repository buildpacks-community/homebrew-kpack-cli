class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/buildpacks-community/kpack-cli"
  version "0.13.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.0/kp-darwin-amd64-0.13.0"
      sha256 "fd621c0bba78abece675fbe91343b63c8b3db6f40b27bb859c83ebdfcb979723"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.0/kp-darwin-arm64-0.13.0"
      sha256 "bd243696d54154bfd93b1708d90acac9f68c48b09658f58ff455d4fdb4a7c56f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.0/kp-linux-amd64-0.13.0"
      sha256 "52f0c927a1350f4f1bb281575ec246f406fb96aa69dc974ed10a2fe52c538158"
    elsif Hardware::CPU.arm?
      url "https://github.com/buildpacks-community/kpack-cli/releases/download/v0.13.0/kp-linux-arm64-0.13.0"
      sha256 "a4d5cd0ec8187945c098b450a617ac86bb6aa062f517ebb6c1b66f1d8d7e9bc2"
    end
  end

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end
