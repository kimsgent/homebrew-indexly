class Indexly < Formula
  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "ad8bea8d51fc6d581a6d43110644ac09ff33ecc8d4fc2f527e2d2ef32fd77542"
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

  def caveats
    <<~EOS
      Indexly is installed successfully.

      If you encounter runtime issues, add the following to your shell config.

      ---- Bash (.bashrc) ----
      echo 'export PATH="$(brew --prefix)/opt/python@3.11/bin:$PATH"' >> ~/.bashrc
      echo 'export PYTHONPATH="$(brew --prefix)/Cellar/indexly/#{version}/libexec:$PYTHONPATH"' >> ~/.bashrc
      echo '
      indexly() {
        PYTHONPATH="$(brew --prefix)/Cellar/indexly/#{version}/libexec/lib/python3.11/site-packages:$PYTHONPATH" \\
        "$(brew --prefix)/opt/python@3.11/bin/python3.11" \\
        "$(brew --prefix)/Cellar/indexly/#{version}/libexec/bin/indexly" "$@"
      }
      ' >> ~/.bashrc

      ---- Zsh (.zshrc) ----
      echo 'export PATH="$(brew --prefix)/opt/python@3.11/bin:$PATH"' >> ~/.zshrc
      echo 'export PYTHONPATH="$(brew --prefix)/Cellar/indexly/#{version}/libexec:$PYTHONPATH"' >> ~/.zshrc
      echo '
      indexly() {
        PYTHONPATH="$(brew --prefix)/Cellar/indexly/#{version}/libexec/lib/python3.11/site-packages:$PYTHONPATH" \\
        "$(brew --prefix)/opt/python@3.11/bin/python3.11" \\
        "$(brew --prefix)/Cellar/indexly/#{version}/libexec/bin/indexly" "$@"
      }
      ' >> ~/.zshrc

      Reload your shell after applying.
    EOS
  end

  test do
    system bin/"indexly", "--version"
    system bin/"indexly", "--help"
  end
end

