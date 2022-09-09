  class Kp < Formula
  desc "A command line interface for interacting with kpack."
  homepage "https://github.com/vmware-tanzu/kpack-cli"
  license "Apache-2.0"

  if OS.mac?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.7.0/kp-darwin-0.7.0"
    sha256 "1b2eb8bffadc02986a2354d9052ce66c1d863dc0ed7b674ac9cb9c56083efb21"
  elsif OS.linux?
    url "https://github.com/vmware-tanzu/kpack-cli/releases/download/v0.7.0/kp-linux-0.7.0"
    sha256 "fe65d1741603fe09cb17382fd6e94e68706b4c07a4350cf8f29870a05f2fba32"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kp"
  end

  test do
    system "#{bin}/kp", "version"
  end
end

