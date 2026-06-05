class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-macos-arm64.tar.gz"
      sha256 "b01d8c8c47b182186b32e7572c54c21dda3df30ce6aadbaa8288e56bfee22ed9"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-macos-x86_64.tar.gz"
      sha256 "6278e69fd408cb3417abc4e6cac107b04f6dc584409a11c5777c3783cc57eb1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-linux-arm64.tar.gz"
      sha256 "37747791ffd9b90259a0633d1af7c578eb30f145a4bcab008e017a90bdab78ad"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.68.0/canon-0.68.0-linux-x86_64.tar.gz"
      sha256 "58ead848dd35a918f65320203b5738660089d123634786788c1bad5d3c166cfd"
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