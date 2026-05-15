class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.53.0/canon-0.53.0-macos-arm64.tar.gz"
      sha256 "40c8922a17a941120503f60aee95fbe83aa5df82820d55648fbae6eaa4dbf057"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.53.0/canon-0.53.0-macos-x86_64.tar.gz"
      sha256 "532d7d08c20ce18efa48f5ce8ce84d519e4d379949688454d7b25c1c23d7d5f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.53.0/canon-0.53.0-linux-arm64.tar.gz"
      sha256 "62f89458b1bf1e6dff474b3c92378dc65141a6c2b93be0dee452645e4185b6e5"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.53.0/canon-0.53.0-linux-x86_64.tar.gz"
      sha256 "657e9aad0ab5388b47a3c0d3b982a50475fcb34f8b315d2256241542fb4e67c9"
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