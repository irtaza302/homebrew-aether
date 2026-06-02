class Aether < Formula
  desc "Aether AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aether-agent"
  url "https://github.com/irtaza302/aether-agent/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "9e22134982ae7d3e7e202edb9c53961f79750df68d40ffb565c4c903eff0f22e"
  version "2.1.0"

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
