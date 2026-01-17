class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "45154c7899418563921cf320a4c0b2f986d5657de6823b3a402252d813034420"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"indexly", "--help"
  end
end
