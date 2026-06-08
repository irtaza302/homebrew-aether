class Aizen < Formula
  desc "Aizen AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aizen-agent"
  url "https://github.com/irtaza302/aizen-agent/archive/refs/tags/v2.2.5.tar.gz"
  sha256 "bd58e6b94b1d6ceb39583e6e48ceb3f5f050f67a170223624c37aad037d9bf62"
  version "2.2.5"

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
