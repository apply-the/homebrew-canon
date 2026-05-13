class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.49.0/canon-0.49.0-macos-arm64.tar.gz"
      sha256 "38bf457ba1b16c212e88d873fc2e1744c8685965d3880d8aad4954e77d7ae037"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.49.0/canon-0.49.0-macos-x86_64.tar.gz"
      sha256 "6b7f72aa4bb4c181f25e98a7298b25168d1847153a8178a7be11065200eec6d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.49.0/canon-0.49.0-linux-arm64.tar.gz"
      sha256 "e6cb80eacd541b424799eb045fa31b3ead9fe07e64dcd0d35a3e95f42b9ebe3d"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.49.0/canon-0.49.0-linux-x86_64.tar.gz"
      sha256 "4b6046e8a9a2016c364d356edb0fcf42648c7ef54c1e43f6193ce52e7f402ccc"
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