# frozen_string_literal: true

class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "d2a6bbeb95a8d24f324fce59a257ad9a9faf71604e916f0d52ab3f87b62e7c51"
  license "MIT"

  depends_on "python@3.11"
  depends_on "tesseract"

  def install
    python = Formula["python@3.11"].opt_bin/"python3.11"
    system python, "-m", "pip", "install",
                   "--prefix=#{libexec}",
                   "--no-cache-dir",
                   "-r", "requirements.txt", "."
    bin.install_symlink libexec/"bin/indexly"
  end

  test do
    system bin/"indexly", "--version"
    system bin/"indexly", "--help"
  end
end

