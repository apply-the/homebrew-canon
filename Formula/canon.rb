class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.59.0/canon-0.59.0-macos-arm64.tar.gz"
      sha256 "bdd8a2c619c49e92cb762da11a2d1eeebf5a7eee466014f0e834eee1458d62b4"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.59.0/canon-0.59.0-macos-x86_64.tar.gz"
      sha256 "a82fccd12c65db371d8b81abab815b572470e23e8934988952bd4b5c42ea8339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.59.0/canon-0.59.0-linux-arm64.tar.gz"
      sha256 "5d23347871d28d3c138e6637031876f4eab5ba82debafa0cc4ffd342c1b60848"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.59.0/canon-0.59.0-linux-x86_64.tar.gz"
      sha256 "bc48b4430bdc8e37e65db7615cda31dca626b50f1785c4767d1ddfcc0d8e1ed7"
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