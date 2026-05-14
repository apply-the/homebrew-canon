class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.51.0/canon-0.51.0-macos-arm64.tar.gz"
      sha256 "57acfebd3322c9ac6012aa155acdcf185738ef26124ff8eb7df58c8992f788a8"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.51.0/canon-0.51.0-macos-x86_64.tar.gz"
      sha256 "915891600e4486c03c3a2c51cd521ef9806d5cda09a7c9d51c12af8f5c233172"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.51.0/canon-0.51.0-linux-arm64.tar.gz"
      sha256 "3f50e576f2910c48e9608d1e050d500fd7f2f4be17a7a14f409f3b0c1c389ca5"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.51.0/canon-0.51.0-linux-x86_64.tar.gz"
      sha256 "cdfdb847a2c69a8ddb6b577762cc7e836ec18f257101f0535a991792197bf007"
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