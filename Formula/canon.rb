class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.47.0/canon-0.47.0-macos-arm64.tar.gz"
      sha256 "82fcb4babad5f3e09740ae5825dd465749b667afdce4d7b105bb3f4af57bfafc"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.47.0/canon-0.47.0-macos-x86_64.tar.gz"
      sha256 "4b5503eeb947bc09448f350f0450078b66145d3d6a7414ad230d67437f7517ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.47.0/canon-0.47.0-linux-arm64.tar.gz"
      sha256 "0c766b17314eca3178fb13bc033456c006aa01bf8804481f7566ea05216a1fa8"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.47.0/canon-0.47.0-linux-x86_64.tar.gz"
      sha256 "6a7eef99182b6f9adf81f14009a329b0ad537b55f6ee11c3938c2625c1126c9d"
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