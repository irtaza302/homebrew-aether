class Aizen < Formula
  desc "Aizen AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aizen-agent"
  url "https://github.com/irtaza302/aizen-agent/archive/refs/tags/v2.6.0.tar.gz"
  sha256 "73770451676b5629b0958ab11b15246feb62d97b986c06417229f8b1a1b7dc46"
  version "2.6.0"

  depends_on "python"

  def install
    # Create virtualenv in libexec
    system "python3", "-m", "venv", libexec
    
    # Install dependencies + local package into the virtualenv
    system "#{libexec}/bin/pip", "install", "--upgrade", "pip", "setuptools", "wheel"
    system "#{libexec}/bin/pip", "install", "."
    
    # Symlink the executable into bin
    bin.install_symlink "#{libexec}/bin/aizen"
  end

  test do
    system "#{bin}/aizen", "--version"
  end
end
