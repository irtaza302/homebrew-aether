class Aizen < Formula
  desc "Aizen AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aizen-agent"
  url "https://github.com/irtaza302/aizen-agent/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "4aa334c1a9cdb7b22f912bc74a421b4d681c93753dc048c1fb9dd6e88ab332c5"
  version "2.5.0"

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
