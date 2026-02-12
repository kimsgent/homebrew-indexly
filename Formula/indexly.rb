# frozen_string_literal: true

class Indexly < Formula
  include Language::Python::Virtualenv

  desc 'Local semantic file indexing and search tool'
  homepage 'https://github.com/kimsgent/project-indexly'
  url 'https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.2.1.tar.gz'
  sha256 'd2a6bbeb95a8d24f324fce59a257ad9a9faf71604e916f0d52ab3f87b62e7c51'
  license 'MIT'

  depends_on 'python@3.11'
  depends_on 'tesseract'

  def install
    # Create a virtualenv inside libexec using Python 3.11
    virtualenv_create(libexec, 'python3.11')

    # Force pip to use only wheels for faster install
    ENV['PIP_ONLY_BINARY'] = ':all:'

    # Install all packages from your requirements.txt
    system libexec / 'bin/pip', 'install', '--no-cache-dir',
           '-r', 'requirements.txt', '.'

    # Symlink the executable to bin
    bin.install_symlink libexec / 'bin/indexly'
  end

  test do
    system bin / 'indexly', '--version'
    system bin / 'indexly', '--help'
  end
end
