class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/releases/download/v2.0.0/aether-macos.tar.gz"
  sha256 "946f745fe6f6a826d064fa6ff3650ef9fb3f00594d3ac6dc240e933f22654ba6"
  version "2.0.0"

  def install
    bin.install "aether"
  end

  test do
    system "#{bin}/aether", "--version"
  end
end
