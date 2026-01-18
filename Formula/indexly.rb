class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "ad8bea8d51fc6d581a6d43110644ac09ff33ecc8d4fc2f527e2d2ef32fd77542"
  license "MIT"

  depends_on "python@3.11"
  depends_on "tesseract"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.11"].opt_bin/"python3.11")
    
    # Install from local source + requirements
    system libexec/"bin/pip", "install", "--no-cache-dir", "--only-binary=:all:",
      "-r", "requirements.txt", "."
    
    bin.install_symlink libexec/"bin/indexly"
  end

  test do
    system bin/"indexly", "--version"
    system bin/"indexly", "--help"
  end
end
