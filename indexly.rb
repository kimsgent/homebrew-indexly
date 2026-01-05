
class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Blazing-fast local file indexing and search tool powered by SQLite FTS5"
  homepage "https://projectindexly.com"
  url "https://files.pythonhosted.org/packages/source/i/indexly/indexly-1.0.5.tar.gz"
  sha256 "RF71D335E1BEAD58BDB5C73B7B5BC11AFF82EF849B643B9087D00F455225AE90C"
  license "MIT"

  depends_on "python@3.11"
  depends_on "tesseract" => :optional

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/indexly", "--help"
  end
end
