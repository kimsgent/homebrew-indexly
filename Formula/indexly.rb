class Indexly < Formula
  include Language::Python::Virtualenv

  desc "Local semantic file indexing and search tool"
  homepage "https://github.com/kimsgent/project-indexly"
  url "https://github.com/kimsgent/project-indexly/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "17b78d0423383a5159c509bab8bbeb85a59ca6a39c0566f5419d7871bbc643e1"
  license "MIT"

  depends_on "python@3.11"
  depends_on "numpy"
  depends_on "pandas"
  depends_on "scipy"
  depends_on "matplotlib"
  depends_on "tesseract"

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/f9/76/3a5e4312c19a028770f86fd7c058cf9f4ec4321c6cf7526bab998a5b683c/nltk-3.9.2.tar.gz"
    sha256 "0f409e9b069ca4177c1903c3e843eef90c7e92992fa4931ae607da6de49e1419"
  end

  resource "pymupdf" do
    url "https://files.pythonhosted.org/packages/48/d6/09b28f027b510838559f7748807192149c419b30cb90e6d5f0cf916dc9dc/pymupdf-1.26.7.tar.gz"
    sha256 "71add8bdc8eb1aaa207c69a13400693f06ad9b927bea976f5d5ab9df0bb489c3"
  end

  resource "pytesseract" do
    url "https://files.pythonhosted.org/packages/9f/a6/7d679b83c285974a7cb94d739b461fa7e7a9b17a3abfd7bf6cbc5c2394b0/pytesseract-0.3.13.tar.gz"
    sha256 "4bf5f880c99406f52a3cfc2633e42d9dc67615e69d8a509d74867d3baddb5db9"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/d0/02/d52c733a2452ef1ffcc123b68e6606d07276b0e358db70eabad7e40042b7/pillow-12.1.0.tar.gz"
    sha256 "5c5ae0a06e9ea030ab786b0251b32c7e4ce10e58d983c0d5c56029455180b5b9"
  end

  resource "python-docx" do
    url "https://files.pythonhosted.org/packages/a9/f7/eddfe33871520adab45aaa1a71f0402a2252050c14c7e3009446c8f4701c/python_docx-1.2.0.tar.gz"
    sha256 "7bc9d7b7d8a69c9c02ca09216118c86552704edc23bac179283f2e38f86220ce"
  end

  resource "openpyxl" do
    url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
    sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
  end

  resource "rapidfuzz" do
    url "https://files.pythonhosted.org/packages/d3/28/9d808fe62375b9aab5ba92fa9b29371297b067c2790b2d7cda648b1e2f8d/rapidfuzz-3.14.3.tar.gz"
    sha256 "2491937177868bc4b1e469087601d53f925e8d270ccc21e07404b4b5814b7b5f"
  end

  resource "fpdf2" do
    url "https://files.pythonhosted.org/packages/e9/c0/784b130a28f4ed612e9aff26d1118e1f91005713dcd0a35e60b54d316b56/fpdf2-2.8.5.tar.gz"
    sha256 "af4491ef2e0a5fe476f9d61362925658949c995f7e804438c0e81008f1550247"
  end

  resource "reportlab" do
    url "https://files.pythonhosted.org/packages/1a/39/42cf24aee570a80e1903221ae3a92a2e34c324794a392eb036cbb6dc3839/reportlab-4.4.9.tar.gz"
    sha256 "7cf487764294ee791a4781f5a157bebce262a666ae4bbb87786760a9676c9378"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz"
    sha256 "6292b1c5186d356bba669ef9f7f051757099565ad9ada5dd630bd9de5fa7fb86"
  end

  resource "extract-msg" do
    url "https://files.pythonhosted.org/packages/5e/65/c70afb3b119a44b3ee36b029485dc15326cf3a7c50da19a1ecbbf949c5d1/extract_msg-0.55.0.tar.gz"
    sha256 "cf08283498c3dfcc7f894dad1579f52e3ced9fb76b865c2355cbe757af8a54e1"
  end

  resource "eml-parser" do
    url "https://files.pythonhosted.org/packages/8f/52/98b93d7352e79f981fafebca347d7d8d9d6c686f9d9f005814ec7d8d52cb/eml_parser-2.0.0.tar.gz"
    sha256 "be88a77c4b79fc1f5e17091c3a587b12c18203347144d5c0977b925707c491e3"
  end

  resource "PyPDF2" do
    url "https://files.pythonhosted.org/packages/9f/bb/18dc3062d37db6c491392007dfd1a7f524bb95886eb956569ac38a23a784/PyPDF2-3.0.1.tar.gz"
    sha256 "a74408f69ba6271f71b9352ef4ed03dc53a31aa404d29b5d31f53bfecfee1440"
  end

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/db/7d/7f3d619e951c88ed75c6037b246ddcf2d322812ee8ea189be89511721d54/watchdog-6.0.0.tar.gz"
    sha256 "9ddf7c82fda3ae8e24decda1338ede66e1c99883db93711d8fb941eaa2d8c282"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "python-pptx" do
    url "https://files.pythonhosted.org/packages/52/a9/0c0db8d37b2b8a645666f7fd8accea4c6224e013c42b1d5c17c93590cd06/python_pptx-1.0.2.tar.gz"
    sha256 "479a8af0eaf0f0d76b6f00b0887732874ad2e3188230315290cd1f9dd9cc7095"
  end

  resource "ebooklib" do
    url "https://files.pythonhosted.org/packages/77/85/322e8882a582d4b707220d1929cfb74c125f2ba513991edbce40dbc462de/ebooklib-0.20.tar.gz"
    sha256 "35e2f9d7d39907be8d39ae2deb261b19848945903ae3dbb6577b187ead69e985"
  end

  resource "odfpy" do
    url "https://files.pythonhosted.org/packages/97/73/8ade73f6749177003f7ce3304f524774adda96e6aaab30ea79fd8fda7934/odfpy-1.4.1.tar.gz"
    sha256 "db766a6e59c5103212f3cc92ec8dd50a0f3a02790233ed0b52148b70d3c438ec"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/fb/d2/8920e102050a0de7bfabeb4c4614a49248cf8d5d7a8d01885fbb24dc767a/rich-14.2.0.tar.gz"
    sha256 "73ff50c7c0c1c77c8243079283f4edb376f0f6442433aecb8ce7e6d0b92d1fe4"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/6a/aa/917ceeed4dbb80d2f04dbd0c784b7ee7bba8ae5a54837ef0e5e062cd3cfb/xmltodict-1.0.2.tar.gz"
    sha256 "54306780b7c2175a3967cad1db92f218207e5bc1aba697d887807c0fb68b7649"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "plotext" do
    url "https://files.pythonhosted.org/packages/c9/d7/f75f397af966fe252d0d34ffd3cae765317fce2134f925f95e7d6725d1ce/plotext-5.3.2.tar.gz"
    sha256 "52d1e932e67c177bf357a3f0fe6ce14d1a96f7f7d5679d7b455b929df517068e"
  end

  resource "plotly" do
    url "https://files.pythonhosted.org/packages/e3/4f/8a10a9b9f5192cb6fdef62f1d77fa7d834190b2c50c0cd256bd62879212b/plotly-6.5.2.tar.gz"
    sha256 "7478555be0198562d1435dee4c308268187553cc15516a2f4dd034453699e393"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"indexly", "--version"
    system bin/"indexly", "--help"
  end
end
