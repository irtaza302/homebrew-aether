class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "1f1acbc6c39b1e36edb0d7c6cf10ba95127b980ce42bbb3bfa4a44b5746db5bb"
  version "2.1.2"

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
