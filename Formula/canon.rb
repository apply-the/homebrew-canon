class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.3/canon-0.72.3-macos-arm64.tar.gz"
      sha256 "8e06ca33e63c378cd84e9da03dea766fc9f7a5d81662125166658e12116b1593"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.3/canon-0.72.3-macos-x86_64.tar.gz"
      sha256 "cc5e97f168f042310df8ce08425f3978202bcee447ef5e12b3d8b7b5ec56a239"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.3/canon-0.72.3-linux-arm64.tar.gz"
      sha256 "fc59785fe640a5c686f5b2455b5ebe69376610821dfad8efbc78b149a2e8663b"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.3/canon-0.72.3-linux-x86_64.tar.gz"
      sha256 "0aa61f5a52677b9f6b1523331c79758ed8cc06ec65397570432eb4ce882cd2e3"
    end
  end

  def install
    bin.install "canon"
  end

  test do
    system bin/"canon", "init", "--output", "json"
    assert_path_exists testpath/".canon"
  end
end