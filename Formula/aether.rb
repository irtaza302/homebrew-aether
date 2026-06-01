class Aether < Formula
  desc "Aether AI Coding Agent"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/releases/download/v1.0.0/aether-macos.tar.gz"
  sha256 "dd36b886c34ce41442f0d431e0f690a95958e54ae2a0e0e7c9b2ee38b2864218"
  version "1.0.0"

  def install
    bin.install "aether"
  end

  test do
    system "#{bin}/aether", "--version"
  end
end
