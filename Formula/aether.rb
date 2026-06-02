class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "03e8bbadcb67651315e6ef3606edcc12c66e6ab4f819c0db84729c0e38409e8a"
  version "2.1.1"

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
