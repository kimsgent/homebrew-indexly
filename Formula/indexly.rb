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
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.11/site-packages"

    # Install Python dependencies
    system python, "-m", "pip", "install", "--no-cache-dir",
           "--target=#{libexec}", "-r", "requirements.txt", "."

    # Prepare bin folder
    (libexec/"bin").mkpath
    indexly_script = Dir.glob(libexec/"**/*indexly*").first
    system python, "-c", "import shutil; shutil.move('#{indexly_script}', '#{libexec}/bin/indexly')"

    indexly_bin = libexec/"bin/indexly"

    # Ensure the file exists
    raise "indexly script not found" unless indexly_bin.exist?

    # Set executable permissions
    indexly_bin.chmod 0o755

    # Write shebang depending on OS
    if OS.mac?
      indexly_bin.write_shebang python
    else
      # Linux/Homebrew: prepend shebang manually
      indexly_bin.open("r+") do |f|
        content = f.read
        f.rewind
        f.puts "#!#{python}"
        f.write content
      end
    end

    # Symlink to bin
    bin.install_symlink indexly_bin
  end

  test do
    system bin/"indexly", "--version"
    system bin/"indexly", "--help"
  end
end

