class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.60.0/canon-0.60.0-macos-arm64.tar.gz"
      sha256 "54adcb175ee6468dc6fbc037964ea1602d7a8b1a0e1481b253d0a479c9ae14fc"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.60.0/canon-0.60.0-macos-x86_64.tar.gz"
      sha256 "d8c80dcd60d862c181dc8336e29e3adfca7753572895e236f21d4101c02a8b0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.60.0/canon-0.60.0-linux-arm64.tar.gz"
      sha256 "361cf6f0744ce39ea427996a431b0d58e5b5484e6bed7dca20bf4329557bde6c"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.60.0/canon-0.60.0-linux-x86_64.tar.gz"
      sha256 "36d8f2180f028a43579169d1cc1f0204de59817e7775272c88288594c5e1a8f8"
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