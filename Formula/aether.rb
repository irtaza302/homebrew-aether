class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "21b5d4ce325820ff8d0269e9a94470eadf793997cbb89c698b45b27b9eacbdfb"
  version "2.2.0"

  depends_on "python"

  def install
    # Create virtualenv in libexec
    system "python3", "-m", "venv", libexec
    
    # Install dependencies + local package into the virtualenv
    system "#{libexec}/bin/pip", "install", "--upgrade", "pip", "setuptools", "wheel"
    system "#{libexec}/bin/pip", "install", "."
    
    # Symlink the executable into bin
    bin.install_symlink "#{libexec}/bin/aether"
  end

  test do
    system "#{bin}/aether", "--version"
  end
end
