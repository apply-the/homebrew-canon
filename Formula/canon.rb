class Canon < Formula
  desc "Governed local-first method engine for AI-assisted software engineering"
  homepage "https://github.com/apply-the/canon"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.52.0/canon-0.52.0-macos-arm64.tar.gz"
      sha256 "975c15dd120870c4c2f46055866dae73705d8acd0fd5906903213d34714981b5"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.52.0/canon-0.52.0-macos-x86_64.tar.gz"
      sha256 "51c23e60fbcf7cc5f42ca3e0a3cb5ae98017264d189c870166366183b87d1cca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/apply-the/canon/releases/download/0.52.0/canon-0.52.0-linux-arm64.tar.gz"
      sha256 "97c96778673c484556c6dca86a45aa8261f8559c7e0eba29e98ff1b100d38d2d"
    end

    on_intel do
      url "https://github.com/apply-the/canon/releases/download/0.52.0/canon-0.52.0-linux-x86_64.tar.gz"
      sha256 "0e279d4fba33d7ac7936f3a7b6a9586f16c3b3c7db2a22c5c818c3b67c8feeed"
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