class Aizen < Formula
  desc "Aizen AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aizen-agent"
  url "https://github.com/irtaza302/aizen-agent/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "8607118c10e091485fa59960cedaee5108361914286e4dc8257cb1bb42c8df63"
  version "2.4.1"

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
