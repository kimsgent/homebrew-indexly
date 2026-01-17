class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "a866ba6bb6fc312ed3a41b0f4cdfe546d9fc4e47c5d2523089fcb18a26a3cd58"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/indexly", "--help"
  end
end
