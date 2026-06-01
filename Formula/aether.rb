class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/releases/download/v2.0.1/aether-macos.tar.gz"
  sha256 "2f2c5a6ee40311c410f32cad2bc670bcfbeabe726be0520fc81b59afbe190960"
  version "2.0.1"

  def install
    bin.install "aether"
  end

  test do
    system "#{bin}/aether", "--version"
  end
end
