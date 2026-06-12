class Aizen < Formula
  desc "Aizen AI Agent — A professional-grade AI coding assistant"
  homepage "https://github.com/irtaza302/aizen-agent"
  url "https://github.com/irtaza302/aizen-agent/archive/refs/tags/v2.4.1.tar.gz"
  sha256 "892be3a67d2f96af4b0548f045e3462d489f1a95ed4d822f812cf1e05c424a11"
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
