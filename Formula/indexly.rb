class Indexly < Formula
  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "ceddf70869d7b8aadfcabab0589b9db966e414a571e5af660a44d9c4b7e19a3e"
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