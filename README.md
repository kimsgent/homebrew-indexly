# 🍺 Homebrew Tap for Indexly

This repository provides the official **Homebrew formula** for installing **Indexly** on macOS using Homebrew.

Indexly is a fast, privacy-first, local file indexing and search tool powered by SQLite FTS5.

---

## 🚀 Install Indexly via Homebrew

```bash
brew tap kimsgent/indexly
brew install indexly
````

Verify installation:

```bash
indexly --help
```

---

## 🔍 About Indexly

**Indexly** lets you index, search, analyze, and tag files locally — completely offline.

### Highlights

* SQLite FTS5 full-text search
* Regex search with snippets
* OCR support (optional, via Tesseract)
* CSV, JSON, XML, YAML analysis
* Document parsing (PDF, DOCX, XLSX, PPTX, EPUB, ODT, MSG, EML)
* Image metadata extraction
* Async folder watching
* Rich, colorized CLI output

📚 Documentation: [https://projectindexly.com](https://projectindexly.com)
💻 Source Code: [https://github.com/kimsgent/project-indexly](https://github.com/kimsgent/project-indexly)

---

## 🧠 OCR Support (Optional)

To enable OCR features:

```bash
brew install tesseract
```

Indexly automatically detects and uses OCR when available.

---

## 🔄 Updating Indexly

```bash
brew update
brew upgrade indexly
```

---

## 📝 License

MIT License
Copyright © N. K Franklin-Gent
