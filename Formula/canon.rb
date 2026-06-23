class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.72.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.6/canon-0.72.6-macos-arm64.tar.gz"
      sha256 "2b8bc04682c8d60a16a1ad917004df09089e5351bed8169698b551f12c368166"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.6/canon-0.72.6-macos-x86_64.tar.gz"
      sha256 "816b04d4e62b4d5df68f6208eaa1499c0830f17b2d2385e3154558579814cc68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.72.6/canon-0.72.6-linux-arm64.tar.gz"
      sha256 "6b36810e969041551adde8fdda78fe5f8b5ea1e5557d626d55ab7b8f1e43d976"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.72.6/canon-0.72.6-linux-x86_64.tar.gz"
      sha256 "e6b466c5876604c76f3a04fe034ae2270749b3ba5ac8b418d7324da7b380ad18"
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